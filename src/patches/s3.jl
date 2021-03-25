using Mocking

abort_multipart_upload_1_patch = @patch function abort_multipart_upload(a...; b...)
    return Dict{String,Any}()
end

complete_multipart_upload_1_patch = @patch function complete_multipart_upload(a...; b...)
    return Dict{String,Any}("ETag" => "\"4d9031c7644d8081c2829f4ea23c55f7-2\"","Bucket" => "acexamplebucket","Key" => "bigobject","Location" => "https://examplebucket.s3.<Region>.amazonaws.com/bigobject")
end

copy_object_1_patch = @patch function copy_object(a...; b...)
    return Dict{String,Any}("CopyObjectResult" => Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","LastModified" => "2016-12-15T17:38:53.000Z"))
end

create_bucket_1_patch = @patch function create_bucket(a...; b...)
    return Dict{String,Any}("Location" => "http://examplebucket.<Region>.s3.amazonaws.com/")
end

create_bucket_2_patch = @patch function create_bucket(a...; b...)
    return Dict{String,Any}("Location" => "/examplebucket")
end

create_multipart_upload_1_patch = @patch function create_multipart_upload(a...; b...)
    return Dict{String,Any}("UploadId" => "ibZBv_75gd9r8lH_gqXatLdxMVpAlj6ZQjEs.OwyF3953YdwbcQnMA2BLGn8Lx12fQNICtMw5KyteFeHw.Sjng--","Bucket" => "examplebucket","Key" => "largeobject")
end

delete_object_2_patch = @patch function delete_object(a...; b...)
    return Dict{String,Any}()
end

delete_object_tagging_1_patch = @patch function delete_object_tagging(a...; b...)
    return Dict{String,Any}("VersionId" => "null")
end

delete_object_tagging_2_patch = @patch function delete_object_tagging(a...; b...)
    return Dict{String,Any}("VersionId" => "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI")
end

delete_objects_1_patch = @patch function delete_objects(a...; b...)
    return Dict{String,Any}("Deleted" => Any[Dict{String,Any}("Key" => "HappyFace.jpg","VersionId" => "yoz3HB.ZhCS_tKVEmIOr7qYyyAaZSKVd"), Dict{String,Any}("Key" => "HappyFace.jpg","VersionId" => "2LWg7lQLnY41.maGB5Z6SWW.dcq0vx7b")])
end

delete_objects_2_patch = @patch function delete_objects(a...; b...)
    return Dict{String,Any}("Deleted" => Any[Dict{String,Any}("DeleteMarker" => "true","Key" => "objectkey1","DeleteMarkerVersionId" => "A._w1z6EFiCF5uhtQMDal9JDkID9tQ7F"), Dict{String,Any}("DeleteMarker" => "true","Key" => "objectkey2","DeleteMarkerVersionId" => "iOd_ORxhkKe_e8G8_oSGxt2PjsCZKlkt")])
end

get_bucket_cors_1_patch = @patch function get_bucket_cors(a...; b...)
    return Dict{String,Any}("CORSRules" => Any[Dict{String,Any}("MaxAgeSeconds" => 3000,"AllowedHeaders" => Any["Authorization"],"AllowedMethods" => Any["GET"],"AllowedOrigins" => Any["*"])])
end

get_bucket_lifecycle_1_patch = @patch function get_bucket_lifecycle(a...; b...)
    return Dict{String,Any}("Rules" => Any[Dict{String,Any}("Status" => "Enabled","Expiration" => Dict{String,Any}("Days" => 1),"Prefix" => "123/","ID" => "delete logs")])
end

get_bucket_lifecycle_configuration_1_patch = @patch function get_bucket_lifecycle_configuration(a...; b...)
    return Dict{String,Any}("Rules" => Any[Dict{String,Any}("Status" => "Enabled","Transitions" => Any[Dict{String,Any}("Days" => 365,"StorageClass" => "STANDARD_IA")],"Prefix" => "TaxDocs","ID" => "Rule for TaxDocs/")])
end

get_bucket_location_1_patch = @patch function get_bucket_location(a...; b...)
    return Dict{String,Any}("LocationConstraint" => "us-west-2")
end

get_bucket_notification_1_patch = @patch function get_bucket_notification(a...; b...)
    return Dict{String,Any}("TopicConfiguration" => Dict{String,Any}("Id" => "YTVkMWEzZGUtNTY1NS00ZmE2LWJjYjktMmRlY2QwODFkNTJi","Topic" => "arn:aws:sns:us-east-1:acct-id:S3ObjectCreatedEventTopic","Event" => "s3:ObjectCreated:Copy","Events" => Any["s3:ObjectCreated:Copy"]),"QueueConfiguration" => Dict{String,Any}("Id" => "MDQ2OGQ4NDEtOTBmNi00YTM4LTk0NzYtZDIwN2I3NWQ1NjIx","Event" => "s3:ObjectCreated:Put","Queue" => "arn:aws:sqs:us-east-1:acct-id:S3ObjectCreatedEventQueue","Events" => Any["s3:ObjectCreated:Put"]))
end

get_bucket_notification_2_patch = @patch function get_bucket_notification(a...; b...)
    return Dict{String,Any}("TopicConfiguration" => Dict{String,Any}("Id" => "YTVkMWEzZGUtNTY1NS00ZmE2LWJjYjktMmRlY2QwODFkNTJi","Topic" => "arn:aws:sns:us-east-1:acct-id:S3ObjectCreatedEventTopic","Event" => "s3:ObjectCreated:Copy","Events" => Any["s3:ObjectCreated:Copy"]),"QueueConfiguration" => Dict{String,Any}("Id" => "MDQ2OGQ4NDEtOTBmNi00YTM4LTk0NzYtZDIwN2I3NWQ1NjIx","Event" => "s3:ObjectCreated:Put","Queue" => "arn:aws:sqs:us-east-1:acct-id:S3ObjectCreatedEventQueue","Events" => Any["s3:ObjectCreated:Put"]))
end

get_bucket_policy_1_patch = @patch function get_bucket_policy(a...; b...)
    return Dict{String,Any}("Policy" => "{\"Version\":\"2008-10-17\",\"Id\":\"LogPolicy\",\"Statement\":[{\"Sid\":\"Enables the log delivery group to publish logs to your bucket \",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"111122223333\"},\"Action\":[\"s3:GetBucketAcl\",\"s3:GetObjectAcl\",\"s3:PutObject\"],\"Resource\":[\"arn:aws:s3:::policytest1/*\",\"arn:aws:s3:::policytest1\"]}]}")
end

get_bucket_replication_1_patch = @patch function get_bucket_replication(a...; b...)
    return Dict{String,Any}("ReplicationConfiguration" => Dict{String,Any}("Rules" => Any[Dict{String,Any}("Status" => "Enabled","Prefix" => "Tax","Destination" => Dict{String,Any}("Bucket" => "arn:aws:s3:::destination-bucket"),"ID" => "MWIwNTkwZmItMTE3MS00ZTc3LWJkZDEtNzRmODQwYzc1OTQy")],"Role" => "arn:aws:iam::acct-id:role/example-role"))
end

get_bucket_request_payment_1_patch = @patch function get_bucket_request_payment(a...; b...)
    return Dict{String,Any}("Payer" => "BucketOwner")
end

get_bucket_tagging_1_patch = @patch function get_bucket_tagging(a...; b...)
    return Dict{String,Any}("TagSet" => Any[Dict{String,Any}("Value" => "value1","Key" => "key1"), Dict{String,Any}("Value" => "value2","Key" => "key2")])
end

get_bucket_versioning_1_patch = @patch function get_bucket_versioning(a...; b...)
    return Dict{String,Any}("MFADelete" => "Disabled","Status" => "Enabled")
end

get_bucket_website_1_patch = @patch function get_bucket_website(a...; b...)
    return Dict{String,Any}("ErrorDocument" => Dict{String,Any}("Key" => "error.html"),"IndexDocument" => Dict{String,Any}("Suffix" => "index.html"))
end

get_object_1_patch = @patch function get_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","LastModified" => "Thu, 15 Dec 2016 01:19:41 GMT","ContentLength" => "3191","Metadata" => Dict{String,Any}(),"AcceptRanges" => "bytes","VersionId" => "null","ContentType" => "image/jpeg","TagCount" => 2)
end

get_object_2_patch = @patch function get_object(a...; b...)
    return Dict{String,Any}("ContentRange" => "bytes 0-9/43","ETag" => "\"0d94420ffd0bc68cd3d152506b97a9cc\"","LastModified" => "Thu, 09 Oct 2014 22:57:28 GMT","ContentLength" => "10","Metadata" => Dict{String,Any}(),"AcceptRanges" => "bytes","VersionId" => "null","ContentType" => "text/plain")
end

get_object_acl_1_patch = @patch function get_object_acl(a...; b...)
    return Dict{String,Any}("Owner" => Dict{String,Any}("DisplayName" => "owner-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Grants" => Any[Dict{String,Any}("Permission" => "WRITE","Grantee" => Dict{String,Any}("DisplayName" => "owner-display-name","Type" => "CanonicalUser","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc")), Dict{String,Any}("Permission" => "WRITE_ACP","Grantee" => Dict{String,Any}("DisplayName" => "owner-display-name","Type" => "CanonicalUser","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc")), Dict{String,Any}("Permission" => "READ","Grantee" => Dict{String,Any}("DisplayName" => "owner-display-name","Type" => "CanonicalUser","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc")), Dict{String,Any}("Permission" => "READ_ACP","Grantee" => Dict{String,Any}("DisplayName" => "owner-display-name","Type" => "CanonicalUser","ID" => "852b113eexamplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"))])
end

get_object_tagging_1_patch = @patch function get_object_tagging(a...; b...)
    return Dict{String,Any}("VersionId" => "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI","TagSet" => Any[Dict{String,Any}("Value" => "Value1","Key" => "Key1")])
end

get_object_tagging_2_patch = @patch function get_object_tagging(a...; b...)
    return Dict{String,Any}("VersionId" => "null","TagSet" => Any[Dict{String,Any}("Value" => "Value4","Key" => "Key4"), Dict{String,Any}("Value" => "Value3","Key" => "Key3")])
end

get_object_torrent_1_patch = @patch function get_object_torrent(a...; b...)
    return Dict{String,Any}()
end

head_object_1_patch = @patch function head_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","LastModified" => "Thu, 15 Dec 2016 01:19:41 GMT","ContentLength" => "3191","Metadata" => Dict{String,Any}(),"AcceptRanges" => "bytes","VersionId" => "null","ContentType" => "image/jpeg")
end

list_buckets_1_patch = @patch function list_buckets(a...; b...)
    return Dict{String,Any}("Owner" => Dict{String,Any}("DisplayName" => "own-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31"),"Buckets" => Any[Dict{String,Any}("CreationDate" => "2012-02-15T21: 03: 02.000Z","Name" => "examplebucket"), Dict{String,Any}("CreationDate" => "2011-07-24T19: 33: 50.000Z","Name" => "examplebucket2"), Dict{String,Any}("CreationDate" => "2010-12-17T00: 56: 49.000Z","Name" => "examplebucket3")])
end

list_multipart_uploads_1_patch = @patch function list_multipart_uploads(a...; b...)
    return Dict{String,Any}("Uploads" => Any[Dict{String,Any}("UploadId" => "examplelUa.CInXklLQtSMJITdUnoZ1Y5GACB5UckOtspm5zbDMCkPF_qkfZzMiFZ6dksmcnqxJyIBvQMG9X9Q--","Initiated" => "2014-05-01T05:40:58.000Z","Owner" => Dict{String,Any}("DisplayName" => "display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Key" => "JavaFile","Initiator" => Dict{String,Any}("DisplayName" => "display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"StorageClass" => "STANDARD"), Dict{String,Any}("UploadId" => "examplelo91lv1iwvWpvCiJWugw2xXLPAD7Z8cJyX9.WiIRgNrdG6Ldsn.9FtS63TCl1Uf5faTB.1U5Ckcbmdw--","Initiated" => "2014-05-01T05:41:27.000Z","Owner" => Dict{String,Any}("DisplayName" => "display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Key" => "JavaFile","Initiator" => Dict{String,Any}("DisplayName" => "display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"StorageClass" => "STANDARD")])
end

list_multipart_uploads_2_patch = @patch function list_multipart_uploads(a...; b...)
    return Dict{String,Any}("KeyMarker" => "","Uploads" => Any[Dict{String,Any}("UploadId" => "gZ30jIqlUa.CInXklLQtSMJITdUnoZ1Y5GACB5UckOtspm5zbDMCkPF_qkfZzMiFZ6dksmcnqxJyIBvQMG9X9Q--","Initiated" => "2014-05-01T05:40:58.000Z","Owner" => Dict{String,Any}("DisplayName" => "mohanataws","ID" => "852b113e7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Key" => "JavaFile","Initiator" => Dict{String,Any}("DisplayName" => "ownder-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"StorageClass" => "STANDARD"), Dict{String,Any}("UploadId" => "b7tZSqIlo91lv1iwvWpvCiJWugw2xXLPAD7Z8cJyX9.WiIRgNrdG6Ldsn.9FtS63TCl1Uf5faTB.1U5Ckcbmdw--","Initiated" => "2014-05-01T05:41:27.000Z","Owner" => Dict{String,Any}("DisplayName" => "ownder-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Key" => "JavaFile","Initiator" => Dict{String,Any}("DisplayName" => "ownder-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"StorageClass" => "STANDARD")],"MaxUploads" => "2","UploadIdMarker" => "","Bucket" => "acl1","NextKeyMarker" => "someobjectkey","IsTruncated" => true,"NextUploadIdMarker" => "examplelo91lv1iwvWpvCiJWugw2xXLPAD7Z8cJyX9.WiIRgNrdG6Ldsn.9FtS63TCl1Uf5faTB.1U5Ckcbmdw--")
end

list_object_versions_1_patch = @patch function list_object_versions(a...; b...)
    return Dict{String,Any}("Versions" => Any[Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","LastModified" => "2016-12-15T01:19:41.000Z","Owner" => Dict{String,Any}("DisplayName" => "owner-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Key" => "HappyFace.jpg","VersionId" => "null","IsLatest" => true,"Size" => 3191,"StorageClass" => "STANDARD"), Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","LastModified" => "2016-12-13T00:58:26.000Z","Owner" => Dict{String,Any}("DisplayName" => "owner-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Key" => "HappyFace.jpg","VersionId" => "PHtexPGjH2y.zBgT8LmB7wwLI2mpbz.k","IsLatest" => false,"Size" => 3191,"StorageClass" => "STANDARD")])
end

list_objects_1_patch = @patch function list_objects(a...; b...)
    return Dict{String,Any}("NextMarker" => "eyJNYXJrZXIiOiBudWxsLCAiYm90b190cnVuY2F0ZV9hbW91bnQiOiAyfQ==","Contents" => Any[Dict{String,Any}("ETag" => "\"70ee1738b6b21e2c8a43f3a5ab0eee71\"","LastModified" => "2014-11-21T19:40:05.000Z","Owner" => Dict{String,Any}("DisplayName" => "myname","ID" => "12345example25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Key" => "example1.jpg","Size" => 11,"StorageClass" => "STANDARD"), Dict{String,Any}("ETag" => "\"9c8af9a76df052144598c115ef33e511\"","LastModified" => "2013-11-15T01:10:49.000Z","Owner" => Dict{String,Any}("DisplayName" => "myname","ID" => "12345example25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Key" => "example2.jpg","Size" => 713193,"StorageClass" => "STANDARD")])
end

list_objects_v2_1_patch = @patch function list_objects_v2(a...; b...)
    return Dict{String,Any}("MaxKeys" => "2","NextContinuationToken" => "1w41l63U0xa8q7smH50vCxyTQqdxo69O3EmK28Bi5PcROI4wI/EyIJg==","KeyCount" => "2","IsTruncated" => true,"Prefix" => "","Name" => "examplebucket","Contents" => Any[Dict{String,Any}("ETag" => "\"70ee1738b6b21e2c8a43f3a5ab0eee71\"","LastModified" => "2014-11-21T19:40:05.000Z","Key" => "happyface.jpg","Size" => 11,"StorageClass" => "STANDARD"), Dict{String,Any}("ETag" => "\"becf17f89c30367a9a44495d62ed521a-1\"","LastModified" => "2014-05-02T04:51:50.000Z","Key" => "test.jpg","Size" => 4192256,"StorageClass" => "STANDARD")])
end

list_parts_1_patch = @patch function list_parts(a...; b...)
    return Dict{String,Any}("Owner" => Dict{String,Any}("DisplayName" => "owner-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Initiator" => Dict{String,Any}("DisplayName" => "owner-display-name","ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"),"Parts" => Any[Dict{String,Any}("ETag" => "\"d8c2eafd90c266e19ab9dcacc479f8af\"","LastModified" => "2016-12-16T00:11:42.000Z","PartNumber" => "1","Size" => 26246026), Dict{String,Any}("ETag" => "\"d8c2eafd90c266e19ab9dcacc479f8af\"","LastModified" => "2016-12-16T00:15:01.000Z","PartNumber" => "2","Size" => 26246026)],"StorageClass" => "STANDARD")
end

put_object_1_patch = @patch function put_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","VersionId" => "psM2sYY4.o1501dSx8wMvnkOzSBB.V4a")
end

put_object_2_patch = @patch function put_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","VersionId" => "Bvq0EDKxOcXLJXNo_Lkz37eM3R4pfzyQ")
end

put_object_3_patch = @patch function put_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","VersionId" => "pSKidl4pHBiNwukdbcPXAIs.sshFFOc0")
end

put_object_4_patch = @patch function put_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","VersionId" => "tpf3zF08nBplQK1XLOefGskR7mGDwcDk")
end

put_object_5_patch = @patch function put_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","VersionId" => "Ri.vC6qVlA4dEnjgRV4ZHsHoFIjqEMNt","ServerSideEncryption" => "AES256")
end

put_object_6_patch = @patch function put_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","VersionId" => "Kirh.unyZwjQ69YxcQLA8z4F5j3kJJKr")
end

put_object_7_patch = @patch function put_object(a...; b...)
    return Dict{String,Any}("ETag" => "\"6805f2cfc46c0f04559748bb039d69ae\"","VersionId" => "CG612hodqujkf8FaaNfp8U..FIhLROcp","ServerSideEncryption" => "AES256")
end

put_object_acl_1_patch = @patch function put_object_acl(a...; b...)
    return Dict{String,Any}()
end

put_object_tagging_1_patch = @patch function put_object_tagging(a...; b...)
    return Dict{String,Any}("VersionId" => "null")
end

restore_object_1_patch = @patch function restore_object(a...; b...)
    return Dict{String,Any}()
end

upload_part_1_patch = @patch function upload_part(a...; b...)
    return Dict{String,Any}("ETag" => "\"d8c2eafd90c266e19ab9dcacc479f8af\"")
end

upload_part_copy_1_patch = @patch function upload_part_copy(a...; b...)
    return Dict{String,Any}("CopyPartResult" => Dict{String,Any}("ETag" => "\"65d16d19e65a7508a51f043180edcc36\"","LastModified" => "2016-12-29T21:44:28.000Z"))
end

upload_part_copy_2_patch = @patch function upload_part_copy(a...; b...)
    return Dict{String,Any}("CopyPartResult" => Dict{String,Any}("ETag" => "\"b0c6f0e7e054ab8fa2536a2677f8734d\"","LastModified" => "2016-12-29T21:24:43.000Z"))
end

