using Mocking

create_address_1_patch = @patch function create_address(a...; b...)
    return Dict{String,Any}("AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b")
end

create_cluster_1_patch = @patch function create_cluster(a...; b...)
    return Dict{String,Any}("ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000")
end

create_job_1_patch = @patch function create_job(a...; b...)
    return Dict{String,Any}("JobId" => "JID123e4567-e89b-12d3-a456-426655440000")
end

describe_address_1_patch = @patch function describe_address(a...; b...)
    return Dict{String,Any}("Address" => Dict{String,Any}("City" => "Seattle","AddressId" => "ADID5643ec50-3eec-4eb3-9be6-9374c10eb51b","Company" => "My Company","PhoneNumber" => "425-555-5555","PostalCode" => "98101","Country" => "US","StateOrProvince" => "WA","Name" => "My Name","Street1" => "123 Main Street"))
end

describe_addresses_1_patch = @patch function describe_addresses(a...; b...)
    return Dict{String,Any}("Addresses" => Any[Dict{String,Any}("City" => "Seattle","AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b","Company" => "My Company","PhoneNumber" => "425-555-5555","PostalCode" => "98101","Country" => "US","StateOrProvince" => "WA","Name" => "My Name","Street1" => "123 Main Street")])
end

describe_cluster_1_patch = @patch function describe_cluster(a...; b...)
    return Dict{String,Any}("ClusterMetadata" => Dict{String,Any}("KmsKeyARN" => "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456","ShippingOption" => "SECOND_DAY","Notification" => Dict{String,Any}("NotifyAll" => false,"JobStatesToNotify" => Any[]),"ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000","CreationDate" => "1480475517.0","Description" => "MyCluster","AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b","ClusterState" => "Pending","Resources" => Dict{String,Any}("S3Resources" => Any[Dict{String,Any}("BucketArn" => "arn:aws:s3:::MyBucket","KeyRange" => Dict{String,Any}())]),"RoleARN" => "arn:aws:iam::123456789012:role/snowball-import-S3-role","JobType" => "LOCAL_USE"))
end

describe_job_1_patch = @patch function describe_job(a...; b...)
    return Dict{String,Any}("JobMetadata" => Dict{String,Any}("SnowballCapacityPreference" => "T80","KmsKeyARN" => "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456","Notification" => Dict{String,Any}("NotifyAll" => false,"JobStatesToNotify" => Any[]),"ShippingDetails" => Dict{String,Any}("ShippingOption" => "SECOND_DAY"),"SnowballType" => "STANDARD","CreationDate" => "1475626164","JobState" => "New","JobId" => "JID123e4567-e89b-12d3-a456-426655440000","Description" => "My Job","AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b","Resources" => Dict{String,Any}("S3Resources" => Any[Dict{String,Any}("BucketArn" => "arn:aws:s3:::MyBucket","KeyRange" => Dict{String,Any}())]),"RoleARN" => "arn:aws:iam::123456789012:role/snowball-import-S3-role","JobType" => "IMPORT"))
end

get_job_manifest_1_patch = @patch function get_job_manifest(a...; b...)
    return Dict{String,Any}("ManifestURI" => "https://awsie-frosty-manifests-prod.s3.amazonaws.com/JID123e4567-e89b-12d3-a456-426655440000_manifest.bin?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20161224T005115Z&X-Amz-SignedHeaders=...")
end

get_job_unlock_code_1_patch = @patch function get_job_unlock_code(a...; b...)
    return Dict{String,Any}("UnlockCode" => "12345-abcde-56789-fghij-01234")
end

get_snowball_usage_1_patch = @patch function get_snowball_usage(a...; b...)
    return Dict{String,Any}("SnowballsInUse" => 0,"SnowballLimit" => 1)
end

list_cluster_jobs_1_patch = @patch function list_cluster_jobs(a...; b...)
    return Dict{String,Any}("JobListEntries" => Any[Dict{String,Any}("IsMaster" => false,"Description" => "MyClustrer-node-001","SnowballType" => "EDGE","CreationDate" => "1480475524.0","JobType" => "LOCAL_USE","JobState" => "New","JobId" => "JID123e4567-e89b-12d3-a456-426655440000"), Dict{String,Any}("IsMaster" => false,"Description" => "MyClustrer-node-002","SnowballType" => "EDGE","CreationDate" => "1480475525.0","JobType" => "LOCAL_USE","JobState" => "New","JobId" => "JID123e4567-e89b-12d3-a456-426655440001"), Dict{String,Any}("IsMaster" => false,"Description" => "MyClustrer-node-003","SnowballType" => "EDGE","CreationDate" => "1480475525.0","JobType" => "LOCAL_USE","JobState" => "New","JobId" => "JID123e4567-e89b-12d3-a456-426655440002"), Dict{String,Any}("IsMaster" => false,"Description" => "MyClustrer-node-004","SnowballType" => "EDGE","CreationDate" => "1480475525.0","JobType" => "LOCAL_USE","JobState" => "New","JobId" => "JID123e4567-e89b-12d3-a456-426655440003"), Dict{String,Any}("IsMaster" => false,"Description" => "MyClustrer-node-005","SnowballType" => "EDGE","CreationDate" => "1480475525.0","JobType" => "LOCAL_USE","JobState" => "New","JobId" => "JID123e4567-e89b-12d3-a456-426655440004")])
end

list_clusters_1_patch = @patch function list_clusters(a...; b...)
    return Dict{String,Any}("ClusterListEntries" => Any[Dict{String,Any}("Description" => "MyCluster","ClusterState" => "Pending","ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000","CreationDate" => "1480475517.0")])
end

list_jobs_1_patch = @patch function list_jobs(a...; b...)
    return Dict{String,Any}("JobListEntries" => Any[Dict{String,Any}("IsMaster" => false,"Description" => "MyJob","SnowballType" => "STANDARD","CreationDate" => "1460678186.0","JobType" => "IMPORT","JobState" => "New","JobId" => "JID123e4567-e89b-12d3-a456-426655440000")])
end

