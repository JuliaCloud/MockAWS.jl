using mAWS

using AWS
using GitHub
using JSON
using Base64
using Mocking
using Test

Mocking.activate()

@testset "patch functionality" begin
    @service S3
    @patches S3

    apply(S3.get_object_1_patch) do
        @test !isempty(@mock S3.get_object("Bucket", "Key"))
    end
end

@testset "service dne" begin
    @test_throws UndefVarError @patches FakeService
end
