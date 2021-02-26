using Mocking

batch_delete_image_1_patch = @patch function batch_delete_image(a...; b...)
    return Dict{String,Any}("imageIds" => Any[Dict{String,Any}("imageDigest" => "sha256:examplee6d1e504117a17000003d3753086354a38375961f2e665416ef4b1b2f","imageTag" => "precise")],"failures" => Any[])
end

batch_get_image_1_patch = @patch function batch_get_image(a...; b...)
    return Dict{String,Any}("images" => Any[Dict{String,Any}("registryId" => "244698725403","repositoryName" => "ubuntu","imageManifest" => "{\n \"schemaVersion\": 1,\n \"name\": \"ubuntu\",\n \"tag\": \"precise\",\n...","imageId" => Dict{String,Any}("imageDigest" => "sha256:example76bdff6d83a09ba2a818f0d00000063724a9ac3ba5019c56f74ebf42a","imageTag" => "precise"))],"failures" => Any[])
end

create_repository_1_patch = @patch function create_repository(a...; b...)
    return Dict{String,Any}("repository" => Dict{String,Any}("repositoryArn" => "arn:aws:ecr:us-west-2:012345678901:repository/project-a/nginx-web-app","registryId" => "012345678901","repositoryName" => "project-a/nginx-web-app"))
end

delete_repository_1_patch = @patch function delete_repository(a...; b...)
    return Dict{String,Any}("repository" => Dict{String,Any}("repositoryArn" => "arn:aws:ecr:us-west-2:012345678901:repository/ubuntu","registryId" => "012345678901","repositoryName" => "ubuntu"))
end

delete_repository_policy_1_patch = @patch function delete_repository_policy(a...; b...)
    return Dict{String,Any}("registryId" => "012345678901","repositoryName" => "ubuntu","policyText" => "{ ... }")
end

describe_repositories_1_patch = @patch function describe_repositories(a...; b...)
    return Dict{String,Any}("repositories" => Any[Dict{String,Any}("repositoryArn" => "arn:aws:ecr:us-west-2:012345678910:repository/ubuntu","registryId" => "012345678910","repositoryName" => "ubuntu"), Dict{String,Any}("repositoryArn" => "arn:aws:ecr:us-west-2:012345678910:repository/test","registryId" => "012345678910","repositoryName" => "test")])
end

get_authorization_token_1_patch = @patch function get_authorization_token(a...; b...)
    return Dict{String,Any}("authorizationData" => Any[Dict{String,Any}("proxyEndpoint" => "https://012345678901.dkr.ecr.us-west-2.amazonaws.com","authorizationToken" => "QVdTOkN...","expiresAt" => "1470951892432")])
end

get_repository_policy_1_patch = @patch function get_repository_policy(a...; b...)
    return Dict{String,Any}("registryId" => "012345678901","repositoryName" => "ubuntu","policyText" => "{\n  \"Version\" : \"2008-10-17\",\n  \"Statement\" : [ {\n    \"Sid\" : \"new statement\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n     \"AWS\" : \"arn:aws:iam::012345678901:role/CodeDeployDemo\"\n    },\n\"Action\" : [ \"ecr:GetDownloadUrlForLayer\", \"ecr:BatchGetImage\", \"ecr:BatchCheckLayerAvailability\" ]\n } ]\n}")
end

list_images_1_patch = @patch function list_images(a...; b...)
    return Dict{String,Any}("imageIds" => Any[Dict{String,Any}("imageDigest" => "sha256:764f63476bdff6d83a09ba2a818f0d35757063724a9ac3ba5019c56f74ebf42a","imageTag" => "precise")])
end

