using MockAWS

using AWS
using GitHub
using JSON
using Base64
using Mocking
using OrderedCollections: OrderedDict
using Test

Mocking.activate()

include("patches.jl")


AUTH = GitHub.OAuth2("foobar")

@testset "@patches" begin
    @testset "patch functionality" begin
        @service Secrets_Manager
        @patches Secrets_Manager

        apply(Secrets_Manager.list_secrets_1_patch) do
            @test !isempty(@mock Secrets_Manager.list_secrets())
        end
    end

    @testset "service dne" begin
        @test_throws UndefVarError @patches FakeService
    end
end

@testset "_get_sha" begin
    expected = FILES[1]["sha"]
    result = MockAWS._get_sha(FILES[1]["path"], FILES)

    @test expected == result
end

@testset "_get_example_files" begin
    apply(_get_service_and_version_patch) do
        result = MockAWS._get_example_files(FILES, AUTH)

        @test length(result) == 1
    end
end
