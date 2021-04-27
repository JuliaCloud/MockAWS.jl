module MockAWS

using Base64
using GitHub
using JSON
using Mocking
using OrderedCollections: OrderedDict

export @patches, generate_patches

const REPO_NAME = "aws/aws-sdk-js"

"""
    macro patches(service::Symbol)

Attach all patches to a high-level AWS.jl `service`.

# Arguments
- `service::Symbol`: Name of the high-level AWS.jl service module.
"""
macro patches(service::Symbol)
    service_name = joinpath(@__DIR__, "patches", lowercase(string(service)) * ".jl")

    # Main is the toplevel module
    # This expects to mirror where AWS.@service places its modules
    return Expr(:toplevel, :(Main.$(service).include($service_name)))
end


"""Get all aws/aws-sdk-js files"""
function _get_aws_sdk_js_files(auth::GitHub.OAuth2)
    master_tree = tree(REPO_NAME, "master"; auth=auth)
    apis_sha = [t for t in master_tree.tree if t["path"]=="apis"][1]["sha"]
    files = tree(REPO_NAME, apis_sha)

    return files.tree
end


"""Filter only examples.json files"""
function _get_example_files(files::Vector, auth::GitHub.OAuth2)
    example_files = filter(f -> endswith(f["path"], ".examples.json"), files)

    seen_services = Set{String}()
    latest_versions = OrderedDict[]

    for service in reverse(example_files)
        service_name, _ = _get_service_and_version(service["path"], files, auth)

        if !(service_name in seen_services)
            push!(seen_services, service_name)
            push!(latest_versions, service)
        end
    end

    return latest_versions
end


"""Find the SHA hash for a give filename"""
function _get_normal_sha(filename::String, files::Vector)
    for file in files
        if file["path"] == filename
            return file["sha"]
        end
    end
end


"""Get service name and version from normal.json file"""
function _get_service_and_version(filename::String, files::Vector, auth::GitHub.OAuth2)
    try
        filename = replace(filename, "examples"=>"normal")
        sha = _get_normal_sha(filename, files)
        contents = blob(REPO_NAME, sha; auth=auth)
        contents = JSON.parse(String(base64decode(contents.content)))

        metadata = contents["metadata"]
        service = lowercase(metadata["serviceId"])
        service = replace(service, " " => '_')
        version = metadata["apiVersion"]

        return (service, version)
    catch e
        if e isa BoundsError
            throw(InvalidFileName("$filename is an invalid AWS JSON filename."))
        else
            rethrow()
        end
    end
end


"""Format function names to match Julia styling"""
function _format_name(function_name::AbstractString)
    # Replace a string of uppercase characters with themselves prefaced by an underscore
    # [A-Z](?![A-Z]) => Match a single uppercase character that is not followed by another uppercase character
    # |(A-Z]{1,})    => Match 1-Infinite amounts of uppercase characters
    function_name = replace(function_name, r"[A-Z](?![A-Z])|([A-Z]{1,})" => s"_\g<0>")

    # Lowercase the entire string
    function_name = lowercase(function_name)

    # Chop off the leading underscore
    return if startswith(function_name, "_")
        chop(function_name, head=1, tail=0)
    else
        function_name
    end
end


"""Generate patches for endpoints"""
function _generate_endpoint_patches(endpoint_name::String, endpoint_examples::Array)
    patches = String[]

    for (i, example) in enumerate(endpoint_examples)
        if haskey(example, "output")
            endpoint_name = _format_name(endpoint_name)

            patch = """
            $(endpoint_name)_$(i)_patch = @patch function $(endpoint_name)(a...; b...)
                return $(example["output"])
            end
            """

            push!(patches, patch)
        end
    end

    return patches
end


"""Generate the patch file"""
function _create_service_patches(service_name::String, service::Dict{String, <:Any})
    filename = joinpath(@__DIR__, "patches", "$(service_name).jl")
    service_examples = service["examples"]

    endpoints = collect(keys(service_examples))
    patches = String[]

    for endpoint in endpoints
        endpoint_patches = _generate_endpoint_patches(endpoint, service_examples[endpoint])

        patches = vcat(patches, endpoint_patches)
        sort!(patches)
    end

    if !isempty(patches)
        template = """
        using Mocking

        $(join(patches, "\n"))
        """

        open(filename, "w") do f
            print(f, template)
        end
    end
end


"""
    generate_patches()

Generate patches for various AWS services based off of the `aws/aws-sdk-js` repository.
"""
function generate_patches()
    auth = GitHub.authenticate(ENV["GITHUB_AUTH"])

    files = _get_aws_sdk_js_files(auth)
    example_files = _get_example_files(files, auth)

    for file in example_files
        service_name, _ = _get_service_and_version(file["path"], files, auth)
        contents = blob(REPO_NAME, file["sha"]; auth=auth)
        contents = JSON.parse(String(base64decode(contents.content)))

        @info "Generating patches for $(service_name)"

        _create_service_patches(service_name, contents)
    end
end

end
