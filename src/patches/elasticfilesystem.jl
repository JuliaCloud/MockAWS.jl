using Mocking

create_file_system_1_patch = @patch function create_file_system(a...; b...)
    return Dict{String,Any}("PerformanceMode" => "generalPurpose","CreationTime" => "1481841524.0","NumberOfMountTargets" => 0,"SizeInBytes" => Dict{String,Any}("Value" => 0),"LifeCycleState" => "creating","Tags" => Any[Dict{String,Any}("Value" => "MyFileSystem","Key" => "Name")],"CreationToken" => "tokenstring","Encrypted" => true,"FileSystemId" => "fs-01234567","OwnerId" => "012345678912")
end

create_mount_target_1_patch = @patch function create_mount_target(a...; b...)
    return Dict{String,Any}("MountTargetId" => "fsmt-12340abc","IpAddress" => "192.0.0.2","LifeCycleState" => "creating","NetworkInterfaceId" => "eni-cedf6789","FileSystemId" => "fs-01234567","OwnerId" => "012345678912","SubnetId" => "subnet-1234abcd")
end

describe_file_systems_1_patch = @patch function describe_file_systems(a...; b...)
    return Dict{String,Any}("FileSystems" => Any[Dict{String,Any}("PerformanceMode" => "generalPurpose","CreationTime" => "1481841524.0","NumberOfMountTargets" => 1,"SizeInBytes" => Dict{String,Any}("Value" => 6144),"LifeCycleState" => "available","Tags" => Any[Dict{String,Any}("Value" => "MyFileSystem","Key" => "Name")],"CreationToken" => "tokenstring","FileSystemId" => "fs-01234567","OwnerId" => "012345678912","Name" => "MyFileSystem")])
end

describe_lifecycle_configuration_1_patch = @patch function describe_lifecycle_configuration(a...; b...)
    return Dict{String,Any}("LifecyclePolicies" => Any[Dict{String,Any}("TransitionToIA" => "AFTER_30_DAYS")])
end

describe_mount_target_security_groups_1_patch = @patch function describe_mount_target_security_groups(a...; b...)
    return Dict{String,Any}("SecurityGroups" => Any["sg-4567abcd"])
end

describe_mount_targets_1_patch = @patch function describe_mount_targets(a...; b...)
    return Dict{String,Any}("MountTargets" => Any[Dict{String,Any}("MountTargetId" => "fsmt-12340abc","IpAddress" => "192.0.0.2","LifeCycleState" => "available","NetworkInterfaceId" => "eni-cedf6789","FileSystemId" => "fs-01234567","OwnerId" => "012345678912","SubnetId" => "subnet-1234abcd")])
end

describe_tags_1_patch = @patch function describe_tags(a...; b...)
    return Dict{String,Any}("Tags" => Any[Dict{String,Any}("Value" => "MyFileSystem","Key" => "Name")])
end

put_lifecycle_configuration_1_patch = @patch function put_lifecycle_configuration(a...; b...)
    return Dict{String,Any}("LifecyclePolicies" => Any[Dict{String,Any}("TransitionToIA" => "AFTER_30_DAYS")])
end

