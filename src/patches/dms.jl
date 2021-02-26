using Mocking

add_tags_to_resource_1_patch = @patch function add_tags_to_resource(a...; b...)
    return Dict{String,Any}()
end

create_endpoint_1_patch = @patch function create_endpoint(a...; b...)
    return Dict{String,Any}("Endpoint" => Dict{String,Any}("Username" => "username","EngineName" => "mysql","Status" => "active","EndpointType" => "source","EndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM","KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd","ServerName" => "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com","EndpointIdentifier" => "test-endpoint-1","Port" => 3306))
end

create_replication_instance_1_patch = @patch function create_replication_instance(a...; b...)
    return Dict{String,Any}("ReplicationInstance" => Dict{String,Any}("ReplicationInstanceStatus" => "creating","PubliclyAccessible" => true,"ReplicationInstanceIdentifier" => "test-rep-1","PreferredMaintenanceWindow" => "sun:06:00-sun:14:00","AutoMinorVersionUpgrade" => true,"AllocatedStorage" => 5,"ReplicationSubnetGroup" => Dict{String,Any}("ReplicationSubnetGroupDescription" => "default","ReplicationSubnetGroupIdentifier" => "default","SubnetGroupStatus" => "Complete","Subnets" => Any[Dict{String,Any}("SubnetIdentifier" => "subnet-f6dd91af","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1d")), Dict{String,Any}("SubnetIdentifier" => "subnet-3605751d","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1b")), Dict{String,Any}("SubnetIdentifier" => "subnet-c2daefb5","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1c")), Dict{String,Any}("SubnetIdentifier" => "subnet-85e90cb8","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1e"))],"VpcId" => "vpc-6741a603"),"EngineVersion" => "1.5.0","ReplicationInstanceClass" => "dms.t2.micro","ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ","KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd","PendingModifiedValues" => Dict{String,Any}()))
end

create_replication_subnet_group_1_patch = @patch function create_replication_subnet_group(a...; b...)
    return Dict{String,Any}("ReplicationSubnetGroup" => Dict{String,Any}())
end

create_replication_task_1_patch = @patch function create_replication_task(a...; b...)
    return Dict{String,Any}("ReplicationTask" => Dict{String,Any}("ReplicationTaskCreationDate" => "2016-12-14T18:25:43Z","TableMappings" => "file://mappingfile.json","TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E","ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM","ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ","Status" => "creating","SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE","MigrationType" => "full-load","ReplicationTaskSettings" => "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}","ReplicationTaskIdentifier" => "task1"))
end

delete_certificate_1_patch = @patch function delete_certificate(a...; b...)
    return Dict{String,Any}("Certificate" => Dict{String,Any}())
end

delete_connection_1_patch = @patch function delete_connection(a...; b...)
    return Dict{String,Any}("Connection" => Dict{String,Any}())
end

delete_endpoint_1_patch = @patch function delete_endpoint(a...; b...)
    return Dict{String,Any}("Endpoint" => Dict{String,Any}("Username" => "username","EngineName" => "mysql","Status" => "active","EndpointType" => "source","EndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM","KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd","ServerName" => "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com","EndpointIdentifier" => "test-endpoint-1","Port" => 3306))
end

delete_replication_instance_1_patch = @patch function delete_replication_instance(a...; b...)
    return Dict{String,Any}("ReplicationInstance" => Dict{String,Any}("ReplicationInstanceStatus" => "creating","PubliclyAccessible" => true,"ReplicationInstanceIdentifier" => "test-rep-1","PreferredMaintenanceWindow" => "sun:06:00-sun:14:00","AutoMinorVersionUpgrade" => true,"AllocatedStorage" => 5,"ReplicationSubnetGroup" => Dict{String,Any}("ReplicationSubnetGroupDescription" => "default","ReplicationSubnetGroupIdentifier" => "default","SubnetGroupStatus" => "Complete","Subnets" => Any[Dict{String,Any}("SubnetIdentifier" => "subnet-f6dd91af","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1d")), Dict{String,Any}("SubnetIdentifier" => "subnet-3605751d","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1b")), Dict{String,Any}("SubnetIdentifier" => "subnet-c2daefb5","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1c")), Dict{String,Any}("SubnetIdentifier" => "subnet-85e90cb8","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1e"))],"VpcId" => "vpc-6741a603"),"EngineVersion" => "1.5.0","ReplicationInstanceClass" => "dms.t2.micro","ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ","KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd","PendingModifiedValues" => Dict{String,Any}()))
end

delete_replication_subnet_group_1_patch = @patch function delete_replication_subnet_group(a...; b...)
    return Dict{String,Any}()
end

delete_replication_task_1_patch = @patch function delete_replication_task(a...; b...)
    return Dict{String,Any}("ReplicationTask" => Dict{String,Any}("ReplicationTaskCreationDate" => "2016-12-14T18:25:43Z","TableMappings" => "file://mappingfile.json","TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E","ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM","ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ","Status" => "creating","SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE","MigrationType" => "full-load","ReplicationTaskSettings" => "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}","ReplicationTaskIdentifier" => "task1"))
end

describe_account_attributes_1_patch = @patch function describe_account_attributes(a...; b...)
    return Dict{String,Any}("AccountQuotas" => Any[Dict{String,Any}("AccountQuotaName" => "ReplicationInstances","Max" => 20,"Used" => 0), Dict{String,Any}("AccountQuotaName" => "AllocatedStorage","Max" => 20,"Used" => 0), Dict{String,Any}("AccountQuotaName" => "Endpoints","Max" => 20,"Used" => 0)])
end

describe_certificates_1_patch = @patch function describe_certificates(a...; b...)
    return Dict{String,Any}("Marker" => "","Certificates" => Any[])
end

describe_connections_1_patch = @patch function describe_connections(a...; b...)
    return Dict{String,Any}("Connections" => Any[Dict{String,Any}("ReplicationInstanceIdentifier" => "test","ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ","Status" => "successful","EndpointArn" => "arn:aws:dms:us-east-arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE","EndpointIdentifier" => "testsrc1")],"Marker" => "")
end

describe_endpoint_types_1_patch = @patch function describe_endpoint_types(a...; b...)
    return Dict{String,Any}("Marker" => "","SupportedEndpointTypes" => Any[])
end

describe_endpoints_1_patch = @patch function describe_endpoints(a...; b...)
    return Dict{String,Any}("Marker" => "","Endpoints" => Any[])
end

describe_orderable_replication_instances_1_patch = @patch function describe_orderable_replication_instances(a...; b...)
    return Dict{String,Any}("Marker" => "","OrderableReplicationInstances" => Any[])
end

describe_refresh_schemas_status_1_patch = @patch function describe_refresh_schemas_status(a...; b...)
    return Dict{String,Any}("RefreshSchemasStatus" => Dict{String,Any}())
end

describe_replication_instances_1_patch = @patch function describe_replication_instances(a...; b...)
    return Dict{String,Any}("Marker" => "","ReplicationInstances" => Any[])
end

describe_replication_subnet_groups_1_patch = @patch function describe_replication_subnet_groups(a...; b...)
    return Dict{String,Any}("Marker" => "","ReplicationSubnetGroups" => Any[])
end

describe_replication_tasks_1_patch = @patch function describe_replication_tasks(a...; b...)
    return Dict{String,Any}("Marker" => "","ReplicationTasks" => Any[])
end

describe_schemas_1_patch = @patch function describe_schemas(a...; b...)
    return Dict{String,Any}("Schemas" => Any[],"Marker" => "")
end

describe_table_statistics_1_patch = @patch function describe_table_statistics(a...; b...)
    return Dict{String,Any}("Marker" => "","ReplicationTaskArn" => "","TableStatistics" => Any[])
end

import_certificate_1_patch = @patch function import_certificate(a...; b...)
    return Dict{String,Any}("Certificate" => Dict{String,Any}())
end

list_tags_for_resource_1_patch = @patch function list_tags_for_resource(a...; b...)
    return Dict{String,Any}("TagList" => Any[])
end

modify_endpoint_1_patch = @patch function modify_endpoint(a...; b...)
    return Dict{String,Any}("Endpoint" => Dict{String,Any}())
end

modify_replication_instance_1_patch = @patch function modify_replication_instance(a...; b...)
    return Dict{String,Any}("ReplicationInstance" => Dict{String,Any}("ReplicationInstanceStatus" => "available","PubliclyAccessible" => true,"ReplicationInstanceIdentifier" => "test-rep-1","PreferredMaintenanceWindow" => "sun:06:00-sun:14:00","AutoMinorVersionUpgrade" => true,"AllocatedStorage" => 5,"ReplicationSubnetGroup" => Dict{String,Any}("ReplicationSubnetGroupDescription" => "default","ReplicationSubnetGroupIdentifier" => "default","SubnetGroupStatus" => "Complete","Subnets" => Any[Dict{String,Any}("SubnetIdentifier" => "subnet-f6dd91af","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1d")), Dict{String,Any}("SubnetIdentifier" => "subnet-3605751d","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1b")), Dict{String,Any}("SubnetIdentifier" => "subnet-c2daefb5","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1c")), Dict{String,Any}("SubnetIdentifier" => "subnet-85e90cb8","SubnetStatus" => "Active","SubnetAvailabilityZone" => Dict{String,Any}("Name" => "us-east-1e"))],"VpcId" => "vpc-6741a603"),"EngineVersion" => "1.5.0","ReplicationInstanceClass" => "dms.t2.micro","ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ","KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd","PendingModifiedValues" => Dict{String,Any}()))
end

modify_replication_subnet_group_1_patch = @patch function modify_replication_subnet_group(a...; b...)
    return Dict{String,Any}("ReplicationSubnetGroup" => Dict{String,Any}())
end

refresh_schemas_1_patch = @patch function refresh_schemas(a...; b...)
    return Dict{String,Any}("RefreshSchemasStatus" => Dict{String,Any}())
end

remove_tags_from_resource_1_patch = @patch function remove_tags_from_resource(a...; b...)
    return Dict{String,Any}()
end

start_replication_task_1_patch = @patch function start_replication_task(a...; b...)
    return Dict{String,Any}("ReplicationTask" => Dict{String,Any}("ReplicationTaskCreationDate" => "2016-12-14T18:25:43Z","TableMappings" => "file://mappingfile.json","TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E","ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM","ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ","Status" => "creating","SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE","MigrationType" => "full-load","ReplicationTaskSettings" => "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}","ReplicationTaskIdentifier" => "task1"))
end

stop_replication_task_1_patch = @patch function stop_replication_task(a...; b...)
    return Dict{String,Any}("ReplicationTask" => Dict{String,Any}("ReplicationTaskCreationDate" => "2016-12-14T18:25:43Z","TableMappings" => "file://mappingfile.json","TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E","ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM","ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ","Status" => "creating","SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE","MigrationType" => "full-load","ReplicationTaskSettings" => "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}","ReplicationTaskIdentifier" => "task1"))
end

test_connection_1_patch = @patch function test_connection(a...; b...)
    return Dict{String,Any}("Connection" => Dict{String,Any}())
end

