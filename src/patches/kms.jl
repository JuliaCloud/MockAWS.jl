using Mocking

cancel_key_deletion_1_patch = @patch function cancel_key_deletion(a...; b...)
    return Dict{String, Any}("KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
end

create_grant_1_patch = @patch function create_grant(a...; b...)
    return Dict{String, Any}("GrantToken" => "AQpAM2RhZTk1MGMyNTk2ZmZmMzEyYWVhOWViN2I1MWM4Mzc0MWFiYjc0ZDE1ODkyNGFlNTIzODZhMzgyZjBlNGY3NiKIAgEBAgB4Pa6VDCWW__MSrqnre1HIN0Grt00ViSSuUjhqOC8OT3YAAADfMIHcBgkqhkiG9w0BBwaggc4wgcsCAQAwgcUGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMmqLyBTAegIn9XlK5AgEQgIGXZQjkBcl1dykDdqZBUQ6L1OfUivQy7JVYO2-ZJP7m6f1g8GzV47HX5phdtONAP7K_HQIflcgpkoCqd_fUnE114mSmiagWkbQ5sqAVV3ov-VeqgrvMe5ZFEWLMSluvBAqdjHEdMIkHMlhlj4ENZbzBfo9Wxk8b8SnwP4kc4gGivedzFXo-dwN8fxjjq_ZZ9JFOj2ijIbj5FyogDCN0drOfi8RORSEuCEmPvjFRMFAwcmwFkN2NPp89amA", "GrantId" => "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60")
end

create_key_1_patch = @patch function create_key(a...; b...)
    return Dict{String, Any}("KeyMetadata" => Dict{String, Any}("Arn" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", "Description" => "", "KeyState" => "Enabled", "KeyUsage" => "ENCRYPT_DECRYPT", "KeyManager" => "CUSTOMER", "Origin" => "AWS_KMS", "CreationDate" => "2017-07-05T14:04:55-07:00", "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab", "AWSAccountId" => "111122223333", "Enabled" => true))
end

decrypt_1_patch = @patch function decrypt(a...; b...)
    return Dict{String, Any}("Plaintext" => "<binary data>", "KeyId" => "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
end

describe_key_1_patch = @patch function describe_key(a...; b...)
    return Dict{String, Any}("KeyMetadata" => Dict{String, Any}("CustomerMasterKeySpec" => "SYMMETRIC_DEFAULT", "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab", "KeyState" => "Enabled", "Origin" => "AWS_KMS", "MultiRegion" => false, "EncryptionAlgorithms" => Any["SYMMETRIC_DEFAULT"], "CreationDate" => "2017-07-05T14:04:55-07:00", "AWSAccountId" => "111122223333", "Arn" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", "Description" => "", "KeyUsage" => "ENCRYPT_DECRYPT", "KeyManager" => "CUSTOMER", "Enabled" => true))
end

encrypt_1_patch = @patch function encrypt(a...; b...)
    return Dict{String, Any}("CiphertextBlob" => "<binary data>", "KeyId" => "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
end

generate_data_key_1_patch = @patch function generate_data_key(a...; b...)
    return Dict{String, Any}("CiphertextBlob" => "<binary data>", "Plaintext" => "<binary data>", "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
end

generate_data_key_without_plaintext_1_patch = @patch function generate_data_key_without_plaintext(a...; b...)
    return Dict{String, Any}("CiphertextBlob" => "<binary data>", "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")
end

generate_random_1_patch = @patch function generate_random(a...; b...)
    return Dict{String, Any}("Plaintext" => "<binary data>")
end

get_key_policy_1_patch = @patch function get_key_policy(a...; b...)
    return Dict{String, Any}("Policy" => "{\n  \"Version\" : \"2012-10-17\",\n  \"Id\" : \"key-default-1\",\n  \"Statement\" : [ {\n    \"Sid\" : \"Enable IAM User Permissions\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n      \"AWS\" : \"arn:aws:iam::111122223333:root\"\n    },\n    \"Action\" : \"kms:*\",\n    \"Resource\" : \"*\"\n  } ]\n}")
end

get_key_rotation_status_1_patch = @patch function get_key_rotation_status(a...; b...)
    return Dict{String, Any}("KeyRotationEnabled" => true)
end

get_parameters_for_import_1_patch = @patch function get_parameters_for_import(a...; b...)
    return Dict{String, Any}("ParametersValidTo" => "2016-12-01T14:52:17-08:00", "ImportToken" => "<binary data>", "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", "PublicKey" => "<binary data>")
end

list_aliases_1_patch = @patch function list_aliases(a...; b...)
    return Dict{String, Any}("Truncated" => false, "Aliases" => Any[Dict{String, Any}("AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/acm", "AliasName" => "alias/aws/acm", "TargetKeyId" => "da03f6f7-d279-427a-9cae-de48d07e5b66"), Dict{String, Any}("AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/ebs", "AliasName" => "alias/aws/ebs", "TargetKeyId" => "25a217e7-7170-4b8c-8bf6-045ea5f70e5b"), Dict{String, Any}("AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/rds", "AliasName" => "alias/aws/rds", "TargetKeyId" => "7ec3104e-c3f2-4b5c-bf42-bfc4772c6685"), Dict{String, Any}("AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/redshift", "AliasName" => "alias/aws/redshift", "TargetKeyId" => "08f7a25a-69e2-4fb5-8f10-393db27326fa"), Dict{String, Any}("AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/s3", "AliasName" => "alias/aws/s3", "TargetKeyId" => "d2b0f1a3-580d-4f79-b836-bc983be8cfa5"), Dict{String, Any}("AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/example1", "AliasName" => "alias/example1", "TargetKeyId" => "4da1e216-62d0-46c5-a7c0-5f3a3d2f8046"), Dict{String, Any}("AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/example2", "AliasName" => "alias/example2", "TargetKeyId" => "f32fef59-2cc2-445b-8573-2d73328acbee"), Dict{String, Any}("AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/example3", "AliasName" => "alias/example3", "TargetKeyId" => "1374ef38-d34e-4d5f-b2c9-4e0daee38855")])
end

list_grants_1_patch = @patch function list_grants(a...; b...)
    return Dict{String, Any}("Truncated" => true, "Grants" => Any[Dict{String, Any}("Operations" => Any["Encrypt", "ReEncryptFrom", "ReEncryptTo"], "RetiringPrincipal" => "acm.us-east-2.amazonaws.com", "CreationDate" => "2016-10-25T14:37:41-07:00", "GrantId" => "91ad875e49b04a9d1f3bdeb84d821f9db6ea95e1098813f6d47f0c65fbe2a172", "IssuingAccount" => "arn:aws:iam::111122223333:root", "GranteePrincipal" => "acm.us-east-2.amazonaws.com", "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"), Dict{String, Any}("Operations" => Any["ReEncryptFrom", "ReEncryptTo"], "RetiringPrincipal" => "acm.us-east-2.amazonaws.com", "CreationDate" => "2016-10-25T14:37:41-07:00", "GrantId" => "a5d67d3e207a8fc1f4928749ee3e52eb0440493a8b9cf05bbfad91655b056200", "IssuingAccount" => "arn:aws:iam::111122223333:root", "GranteePrincipal" => "acm.us-east-2.amazonaws.com", "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"), Dict{String, Any}("Operations" => Any["Encrypt", "ReEncryptFrom", "ReEncryptTo"], "RetiringPrincipal" => "acm.us-east-2.amazonaws.com", "CreationDate" => "2016-10-25T14:37:41-07:00", "GrantId" => "c541aaf05d90cb78846a73b346fc43e65be28b7163129488c738e0c9e0628f4f", "IssuingAccount" => "arn:aws:iam::111122223333:root", "GranteePrincipal" => "acm.us-east-2.amazonaws.com", "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"), Dict{String, Any}("Operations" => Any["Encrypt", "ReEncryptFrom", "ReEncryptTo"], "RetiringPrincipal" => "acm.us-east-2.amazonaws.com", "CreationDate" => "2016-10-25T14:37:41-07:00", "GrantId" => "dd2052c67b4c76ee45caf1dc6a1e2d24e8dc744a51b36ae2f067dc540ce0105c", "IssuingAccount" => "arn:aws:iam::111122223333:root", "GranteePrincipal" => "acm.us-east-2.amazonaws.com", "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab")])
end

list_key_policies_1_patch = @patch function list_key_policies(a...; b...)
    return Dict{String, Any}("PolicyNames" => Any["default"], "Truncated" => false)
end

list_keys_1_patch = @patch function list_keys(a...; b...)
    return Dict{String, Any}("Truncated" => false, "Keys" => Any[Dict{String, Any}("KeyId" => "0d990263-018e-4e65-a703-eff731de951e", "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/0d990263-018e-4e65-a703-eff731de951e"), Dict{String, Any}("KeyId" => "144be297-0ae1-44ac-9c8f-93cd8c82f841", "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/144be297-0ae1-44ac-9c8f-93cd8c82f841"), Dict{String, Any}("KeyId" => "21184251-b765-428e-b852-2c7353e72571", "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/21184251-b765-428e-b852-2c7353e72571"), Dict{String, Any}("KeyId" => "214fe92f-5b03-4ae1-b350-db2a45dbe10c", "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/214fe92f-5b03-4ae1-b350-db2a45dbe10c"), Dict{String, Any}("KeyId" => "339963f2-e523-49d3-af24-a0fe752aa458", "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/339963f2-e523-49d3-af24-a0fe752aa458"), Dict{String, Any}("KeyId" => "b776a44b-df37-4438-9be4-a27494e4271a", "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/b776a44b-df37-4438-9be4-a27494e4271a"), Dict{String, Any}("KeyId" => "deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb", "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb")])
end

list_resource_tags_1_patch = @patch function list_resource_tags(a...; b...)
    return Dict{String, Any}("Truncated" => false, "Tags" => Any[Dict{String, Any}("TagValue" => "87654", "TagKey" => "CostCenter"), Dict{String, Any}("TagValue" => "ExampleUser", "TagKey" => "CreatedBy"), Dict{String, Any}("TagValue" => "Test", "TagKey" => "Purpose")])
end

list_retirable_grants_1_patch = @patch function list_retirable_grants(a...; b...)
    return Dict{String, Any}("Truncated" => false, "Grants" => Any[Dict{String, Any}("Operations" => Any["Decrypt", "Encrypt"], "RetiringPrincipal" => "arn:aws:iam::111122223333:role/ExampleRole", "CreationDate" => "2016-12-07T11:09:35-08:00", "GrantId" => "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60", "IssuingAccount" => "arn:aws:iam::444455556666:root", "GranteePrincipal" => "arn:aws:iam::111122223333:role/ExampleRole", "KeyId" => "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab")])
end

re_encrypt_1_patch = @patch function re_encrypt(a...; b...)
    return Dict{String, Any}("CiphertextBlob" => "<binary data>", "SourceKeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321")
end

schedule_key_deletion_1_patch = @patch function schedule_key_deletion(a...; b...)
    return Dict{String, Any}("KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab", "DeletionDate" => "2016-12-17T16:00:00-08:00")
end

