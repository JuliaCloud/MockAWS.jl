using Mocking

create_backup_1_patch = @patch function create_backup(a...; b...)
    return Dict{String,Any}("Backup" => Dict{String,Any}("ProgressPercent" => 0,"ResourceARN" => "arn:aws:fsx:us-east-1:012345678912:backup/backup-03e3c82e0183b7b6b","CreationTime" => "1481841524.0","Tags" => Any[Dict{String,Any}("Value" => "MyBackup","Key" => "Name")],"BackupId" => "backup-03e3c82e0183b7b6b","Type" => "USER_INITIATED","Lifecycle" => "CREATING","FileSystem" => Dict{String,Any}("StorageCapacity" => 300,"WindowsConfiguration" => Dict{String,Any}("AutomaticBackupRetentionDays" => 30,"DailyAutomaticBackupStartTime" => "05:00","WeeklyMaintenanceStartTime" => "1:05:00","ActiveDirectoryId" => "d-1234abcd12"),"FileSystemId" => "fs-0498eed5fe91001ec","OwnerId" => "012345678912")))
end

create_file_system_1_patch = @patch function create_file_system(a...; b...)
    return Dict{String,Any}("FileSystem" => Dict{String,Any}("Lifecycle" => "CREATING","OwnerId" => "012345678912","StorageCapacity" => 3200,"ResourceARN" => "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0123456789abcdef0","Tags" => Any[Dict{String,Any}("Value" => "MyFileSystem","Key" => "Name")],"VpcId" => "vpc-ab1234cd","CreationTime" => "1481841524.0","SubnetIds" => Any["subnet-1234abcd"],"FileSystemId" => "fs-0123456789abcdef0","DNSName" => "fs-0123456789abcdef0.fsx.com","WindowsConfiguration" => Dict{String,Any}("AutomaticBackupRetentionDays" => 30,"ThroughputCapacity" => 32,"DailyAutomaticBackupStartTime" => "05:00","Aliases" => Any[Dict{String,Any}("Lifecycle" => "CREATING","Name" => "accounting.corp.example.com")],"WeeklyMaintenanceStartTime" => "1:05:00","ActiveDirectoryId" => "d-1234abcd12"),"StorageType" => "HDD","KmsKeyId" => "arn:aws:kms:us-east-1:012345678912:key/1111abcd-2222-3333-4444-55556666eeff"))
end

create_file_system_from_backup_1_patch = @patch function create_file_system_from_backup(a...; b...)
    return Dict{String,Any}("FileSystem" => Dict{String,Any}("Lifecycle" => "CREATING","OwnerId" => "012345678912","StorageCapacity" => 300,"ResourceARN" => "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec","Tags" => Any[Dict{String,Any}("Value" => "MyFileSystem","Key" => "Name")],"VpcId" => "vpc-ab1234cd","CreationTime" => "1481841524.0","SubnetIds" => Any["subnet-1234abcd"],"FileSystemId" => "fs-0498eed5fe91001ec","DNSName" => "fs-0498eed5fe91001ec.fsx.com","WindowsConfiguration" => Dict{String,Any}("AutomaticBackupRetentionDays" => 30,"ThroughputCapacity" => 8,"DailyAutomaticBackupStartTime" => "05:00","WeeklyMaintenanceStartTime" => "1:05:00","ActiveDirectoryId" => "d-1234abcd12"),"KmsKeyId" => "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6"))
end

delete_backup_1_patch = @patch function delete_backup(a...; b...)
    return Dict{String,Any}("BackupId" => "backup-03e3c82e0183b7b6b","Lifecycle" => "DELETED")
end

delete_file_system_1_patch = @patch function delete_file_system(a...; b...)
    return Dict{String,Any}("FileSystemId" => "fs-0498eed5fe91001ec","Lifecycle" => "DELETING")
end

describe_backups_1_patch = @patch function describe_backups(a...; b...)
    return Dict{String,Any}("Backups" => Any[Dict{String,Any}("ResourceARN" => "arn:aws:fsx:us-east-1:012345678912:backup/backup-03e3c82e0183b7b6b","CreationTime" => "1481841524.0","Tags" => Any[Dict{String,Any}("Value" => "MyBackup","Key" => "Name")],"BackupId" => "backup-03e3c82e0183b7b6b","Type" => "USER_INITIATED","Lifecycle" => "AVAILABLE","FileSystem" => Dict{String,Any}("StorageCapacity" => 300,"WindowsConfiguration" => Dict{String,Any}("AutomaticBackupRetentionDays" => 30,"DailyAutomaticBackupStartTime" => "05:00","WeeklyMaintenanceStartTime" => "1:05:00","ActiveDirectoryId" => "d-1234abcd12"),"FileSystemId" => "fs-0498eed5fe91001ec","OwnerId" => "012345678912"))])
end

describe_file_systems_1_patch = @patch function describe_file_systems(a...; b...)
    return Dict{String,Any}("FileSystems" => Any[Dict{String,Any}("Lifecycle" => "AVAILABLE","OwnerId" => "012345678912","StorageCapacity" => 300,"ResourceARN" => "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec","Tags" => Any[Dict{String,Any}("Value" => "MyFileSystem","Key" => "Name")],"VpcId" => "vpc-ab1234cd","CreationTime" => "1481841524.0","SubnetIds" => Any["subnet-1234abcd"],"FileSystemId" => "fs-0498eed5fe91001ec","NetworkInterfaceIds" => Any["eni-abcd1234"],"DNSName" => "fs-0498eed5fe91001ec.fsx.com","WindowsConfiguration" => Dict{String,Any}("AutomaticBackupRetentionDays" => 30,"ThroughputCapacity" => 8,"DailyAutomaticBackupStartTime" => "05:00","WeeklyMaintenanceStartTime" => "1:05:00","ActiveDirectoryId" => "d-1234abcd12"),"KmsKeyId" => "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6")])
end

list_tags_for_resource_1_patch = @patch function list_tags_for_resource(a...; b...)
    return Dict{String,Any}("Tags" => Any[Dict{String,Any}("Value" => "MyFileSystem","Key" => "Name")])
end

update_file_system_1_patch = @patch function update_file_system(a...; b...)
    return Dict{String,Any}("FileSystem" => Dict{String,Any}("Lifecycle" => "AVAILABLE","OwnerId" => "012345678912","StorageCapacity" => 300,"ResourceARN" => "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec","Tags" => Any[Dict{String,Any}("Value" => "MyFileSystem","Key" => "Name")],"VpcId" => "vpc-ab1234cd","CreationTime" => "1481841524.0","SubnetIds" => Any["subnet-1234abcd"],"FileSystemId" => "fs-0498eed5fe91001ec","DNSName" => "fs-0498eed5fe91001ec.fsx.com","WindowsConfiguration" => Dict{String,Any}("AutomaticBackupRetentionDays" => 10,"ThroughputCapacity" => 8,"DailyAutomaticBackupStartTime" => "06:00","WeeklyMaintenanceStartTime" => "3:06:00"),"KmsKeyId" => "arn:aws:kms:us-east-1:012345678912:key/0ff3ea8d-130e-4133-877f-93908b6fdbd6"))
end

