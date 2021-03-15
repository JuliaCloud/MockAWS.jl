using Mocking

complete_multipart_upload_1_patch = @patch function complete_multipart_upload(a...; b...)
    return Dict{String,Any}("location" => "/111122223333/vaults/my-vault/archives/NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId","checksum" => "9628195fcdbcbbe76cdde456d4646fa7de5f219fb39823836d81f0cc0e18aa67","archiveId" => "NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId")
end

create_vault_1_patch = @patch function create_vault(a...; b...)
    return Dict{String,Any}("location" => "/111122223333/vaults/my-vault")
end

describe_job_1_patch = @patch function describe_job(a...; b...)
    return Dict{String,Any}("InventoryRetrievalParameters" => Dict{String,Any}("Format" => "JSON"),"Completed" => false,"StatusCode" => "InProgress","CreationDate" => "2015-07-17T20:23:41.616Z","VaultARN" => "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault","Action" => "InventoryRetrieval","JobId" => "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW")
end

describe_vault_1_patch = @patch function describe_vault(a...; b...)
    return Dict{String,Any}("VaultName" => "my-vault","SizeInBytes" => 0,"NumberOfArchives" => 0,"CreationDate" => "2016-09-23T19:27:18.665Z","VaultARN" => "arn:aws:glacier:us-west-2:111122223333:vaults/my-vault")
end

get_data_retrieval_policy_1_patch = @patch function get_data_retrieval_policy(a...; b...)
    return Dict{String,Any}("Policy" => Dict{String,Any}("Rules" => Any[Dict{String,Any}("Strategy" => "BytesPerHour","BytesPerHour" => 10737418240)]))
end

get_job_output_1_patch = @patch function get_job_output(a...; b...)
    return Dict{String,Any}("body" => "inventory-data","status" => 200,"acceptRanges" => "bytes","contentType" => "application/json")
end

get_vault_access_policy_1_patch = @patch function get_vault_access_policy(a...; b...)
    return Dict{String,Any}("policy" => Dict{String,Any}("Policy" => "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-owner-access-rights\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\"}]}"))
end

get_vault_lock_1_patch = @patch function get_vault_lock(a...; b...)
    return Dict{String,Any}("ExpirationDate" => "exampledate","CreationDate" => "exampledate","Policy" => "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-vault-lock\",\"Effect\":\"Deny\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\",\"Condition\":{\"NumericLessThanEquals\":{\"glacier:ArchiveAgeinDays\":\"365\"}}}]}","State" => "InProgress")
end

get_vault_notifications_1_patch = @patch function get_vault_notifications(a...; b...)
    return Dict{String,Any}("vaultNotificationConfig" => Dict{String,Any}("SNSTopic" => "arn:aws:sns:us-west-2:0123456789012:my-vault","Events" => Any["InventoryRetrievalCompleted", "ArchiveRetrievalCompleted"]))
end

initiate_job_1_patch = @patch function initiate_job(a...; b...)
    return Dict{String,Any}("jobId" => " HkF9p6o7yjhFx-K3CGl6fuSm6VzW9T7esGQfco8nUXVYwS0jlb5gq1JZ55yHgt5vP54ZShjoQzQVVh7vEXAMPLEjobID","location" => "/111122223333/vaults/examplevault/jobs/HkF9p6o7yjhFx-K3CGl6fuSm6VzW9T7esGQfco8nUXVYwS0jlb5gq1JZ55yHgt5vP54ZShjoQzQVVh7vEXAMPLEjobID")
end

initiate_multipart_upload_1_patch = @patch function initiate_multipart_upload(a...; b...)
    return Dict{String,Any}("location" => "/111122223333/vaults/my-vault/multipart-uploads/19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ","uploadId" => "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ")
end

initiate_vault_lock_1_patch = @patch function initiate_vault_lock(a...; b...)
    return Dict{String,Any}("lockId" => "AE863rKkWZU53SLW5be4DUcW")
end

list_jobs_1_patch = @patch function list_jobs(a...; b...)
    return Dict{String,Any}("JobList" => Any[Dict{String,Any}("RetrievalByteRange" => "0-3145727","Action" => "ArchiveRetrieval","SNSTopic" => "arn:aws:sns:us-west-2:0123456789012:my-vault","ArchiveSizeInBytes" => 3145728,"VaultARN" => "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault","StatusCode" => "InProgress","CreationDate" => "2015-07-17T21:16:13.840Z","JobDescription" => "Retrieve archive on 2015-07-17","JobId" => "l7IL5-EkXyEY9Ws95fClzIbk2O5uLYaFdAYOi-azsX_Z8V6NH4yERHzars8wTKYQMX6nBDI9cMNHzyZJO59-8N9aHWav","ArchiveId" => "kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw","Completed" => false,"ArchiveSHA256TreeHash" => "9628195fcdbcbbe76cdde932d4646fa7de5f219fb39823836d81f0cc0e18aa67","SHA256TreeHash" => "9628195fcdbcbbe76cdde932d4646fa7de5f219fb39823836d81f0cc0e18aa67"), Dict{String,Any}("InventoryRetrievalParameters" => Dict{String,Any}("Format" => "JSON"),"Completed" => false,"StatusCode" => "InProgress","CreationDate" => "2015-07-17T20:23:41.616Z","VaultARN" => "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault","Action" => "InventoryRetrieval","JobId" => "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW")])
end

list_multipart_uploads_1_patch = @patch function list_multipart_uploads(a...; b...)
    return Dict{String,Any}("Marker" => "null","UploadsList" => Any[Dict{String,Any}("PartSizeInBytes" => 4194304,"MultipartUploadId" => "xsQdFIRsfJr20CW2AbZBKpRZAFTZSJIMtL2hYf8mvp8dM0m4RUzlaqoEye6g3h3ecqB_zqwB7zLDMeSWhwo65re4C4Ev","ArchiveDescription" => "archive 1","CreationDate" => "2012-03-19T23:20:59.130Z","VaultARN" => "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault"), Dict{String,Any}("PartSizeInBytes" => 4194304,"MultipartUploadId" => "nPyGOnyFcx67qqX7E-0tSGiRi88hHMOwOxR-_jNyM6RjVMFfV29lFqZ3rNsSaWBugg6OP92pRtufeHdQH7ClIpSF6uJc","ArchiveDescription" => "archive 2","CreationDate" => "2012-04-01T15:00:00.000Z","VaultARN" => "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault"), Dict{String,Any}("PartSizeInBytes" => 4194304,"MultipartUploadId" => "qt-RBst_7yO8gVIonIBsAxr2t-db0pE4s8MNeGjKjGdNpuU-cdSAcqG62guwV9r5jh5mLyFPzFEitTpNE7iQfHiu1XoV","ArchiveDescription" => "archive 3","CreationDate" => "2012-03-20T17:03:43.221Z","VaultARN" => "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault")])
end

list_parts_1_patch = @patch function list_parts(a...; b...)
    return Dict{String,Any}("PartSizeInBytes" => 4194304,"Marker" => "null","MultipartUploadId" => "OW2fM5iVylEpFEMM9_HpKowRapC3vn5sSL39_396UW9zLFUWVrnRHaPjUJddQ5OxSHVXjYtrN47NBZ-khxOjyEXAMPLE","ArchiveDescription" => "archive description","CreationDate" => "2012-03-20T17:03:43.221Z","VaultARN" => "arn:aws:glacier:us-west-2:012345678901:vaults/demo1-vault","Parts" => Any[Dict{String,Any}("RangeInBytes" => "0-4194303","SHA256TreeHash" => "01d34dabf7be316472c93b1ef80721f5d4"), Dict{String,Any}("RangeInBytes" => "4194304-8388607","SHA256TreeHash" => "0195875365afda349fc21c84c099987164")])
end

list_provisioned_capacity_1_patch = @patch function list_provisioned_capacity(a...; b...)
    return Dict{String,Any}("ProvisionedCapacityList" => Any[Dict{String,Any}("ExpirationDate" => "2016-12-12T00:00:00.000Z","StartDate" => "2016-11-11T20:11:51.095Z","CapacityId" => "zSaq7NzHFQDANTfQkDen4V7z"), Dict{String,Any}("ExpirationDate" => "2017-01-15T00:00:00.000Z","StartDate" => "2016-12-13T20:11:51.095Z","CapacityId" => "yXaq7NzHFQNADTfQkDen4V7z")])
end

list_tags_for_vault_1_patch = @patch function list_tags_for_vault(a...; b...)
    return Dict{String,Any}("Tags" => Dict{String,Any}("id" => "1234","date" => "july2015"))
end

list_vaults_1_patch = @patch function list_vaults(a...; b...)
    return Dict{String,Any}("VaultList" => Any[Dict{String,Any}("VaultName" => "my-vault","SizeInBytes" => 3178496,"NumberOfArchives" => 1,"CreationDate" => "2015-04-06T21:23:45.708Z","VaultARN" => "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault","LastInventoryDate" => "2015-04-07T00:26:19.028Z")])
end

purchase_provisioned_capacity_1_patch = @patch function purchase_provisioned_capacity(a...; b...)
    return Dict{String,Any}("capacityId" => "zSaq7NzHFQDANTfQkDen4V7z")
end

upload_archive_1_patch = @patch function upload_archive(a...; b...)
    return Dict{String,Any}("location" => "/0123456789012/vaults/my-vault/archives/kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw","checksum" => "969fb39823836d81f0cc028195fcdbcbbe76cdde932d4646fa7de5f21e18aa67","archiveId" => "kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw")
end

upload_multipart_part_1_patch = @patch function upload_multipart_part(a...; b...)
    return Dict{String,Any}("checksum" => "c06f7cd4baacb087002a99a5f48bf953")
end

