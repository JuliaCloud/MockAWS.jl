using Mocking

create_environment_ec2_1_patch = @patch function create_environment_ec2(a...; b...)
    return Dict{String, Any}("environmentId" => "8d9967e2f0624182b74e7690ad69ebEX")
end

create_environment_membership_1_patch = @patch function create_environment_membership(a...; b...)
    return Dict{String, Any}("membership" => Dict{String, Any}("userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser", "userId" => "AIDAJ3BA6O2FMJWCWXHEX", "permissions" => "read-write", "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX"))
end

delete_environment_1_patch = @patch function delete_environment(a...; b...)
    return Dict{String, Any}()
end

delete_environment_membership_1_patch = @patch function delete_environment_membership(a...; b...)
    return Dict{String, Any}()
end

describe_environment_memberships_1_patch = @patch function describe_environment_memberships(a...; b...)
    return Dict{String, Any}("memberships" => Any[Dict{String, Any}("userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser", "userId" => "AIDAJ3BA6O2FMJWCWXHEX", "permissions" => "read-write", "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX"), Dict{String, Any}("userArn" => "arn:aws:iam::123456789012:user/MyDemoUser", "userId" => "AIDAJNUEDQAQWFELJDLEX", "permissions" => "owner", "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX")])
end

describe_environment_memberships_2_patch = @patch function describe_environment_memberships(a...; b...)
    return Dict{String, Any}("memberships" => Any[Dict{String, Any}("userArn" => "arn:aws:iam::123456789012:user/MyDemoUser", "userId" => "AIDAJNUEDQAQWFELJDLEX", "permissions" => "owner", "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX")])
end

describe_environment_memberships_3_patch = @patch function describe_environment_memberships(a...; b...)
    return Dict{String, Any}("memberships" => Any[Dict{String, Any}("userArn" => "arn:aws:iam::123456789012:user/MyDemoUser", "userId" => "AIDAJNUEDQAQWFELJDLEX", "lastAccess" => "2018-01-19T11:06:13Z", "permissions" => "owner", "environmentId" => "10a75714bd494714929e7f5ec4125aEX"), Dict{String, Any}("userArn" => "arn:aws:iam::123456789012:user/MyDemoUser", "userId" => "AIDAJNUEDQAQWFELJDLEX", "lastAccess" => "2018-01-19T11:39:19Z", "permissions" => "owner", "environmentId" => "12bfc3cd537f41cb9776f8af5525c9EX")])
end

describe_environment_status_1_patch = @patch function describe_environment_status(a...; b...)
    return Dict{String, Any}("status" => "ready", "message" => "Environment is ready to use")
end

describe_environments_1_patch = @patch function describe_environments(a...; b...)
    return Dict{String, Any}("environments" => Any[Dict{String, Any}("lifecycle" => Dict{String, Any}("status" => "CREATED"), "name" => "my-demo-environment", "ownerArn" => "arn:aws:iam::123456789012:user/MyDemoUser", "id" => "8d9967e2f0624182b74e7690ad69ebEX", "type" => "ec2", "arn" => "arn:aws:cloud9:us-east-2:123456789012:environment:8d9967e2f0624182b74e7690ad69ebEX", "description" => "This is my demonstration environment."), Dict{String, Any}("lifecycle" => Dict{String, Any}("status" => "CREATED"), "name" => "another-demo-environment", "ownerArn" => "arn:aws:sts::123456789012:assumed-role/AnotherDemoUser/AnotherDemoUser", "id" => "349c86d4579e4e7298d500ff57a6b2EX", "type" => "ssh", "arn" => "arn:aws:cloud9:us-east-2:123456789012:environment:349c86d4579e4e7298d500ff57a6b2EX", "description" => "")])
end

list_environments_1_patch = @patch function list_environments(a...; b...)
    return Dict{String, Any}("environmentIds" => Any["349c86d4579e4e7298d500ff57a6b2EX", "45a3da47af0840f2b0c0824f5ee232EX"])
end

update_environment_1_patch = @patch function update_environment(a...; b...)
    return Dict{String, Any}()
end

update_environment_membership_1_patch = @patch function update_environment_membership(a...; b...)
    return Dict{String, Any}("membership" => Dict{String, Any}("userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser", "userId" => "AIDAJ3BA6O2FMJWCWXHEX", "permissions" => "read-only", "environmentId" => "8d9967e2f0624182b74e7690ad69eb31"))
end

