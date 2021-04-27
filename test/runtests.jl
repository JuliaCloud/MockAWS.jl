using MockAWS

using AWS
using GitHub
using JSON
using Base64
using Mocking
using OrderedCollections: OrderedDict
using Test

Mocking.activate()

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
