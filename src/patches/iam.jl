using Mocking

create_access_key_1_patch = @patch function create_access_key(a...; b...)
    return Dict{String, Any}("AccessKey" => Dict{String, Any}("SecretAccessKey" => "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY", "UserName" => "Bob", "Status" => "Active", "AccessKeyId" => "AKIAIOSFODNN7EXAMPLE", "CreateDate" => "2015-03-09T18:39:23.411Z"))
end

create_group_1_patch = @patch function create_group(a...; b...)
    return Dict{String, Any}("Group" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:group/Admins", "Path" => "/", "GroupName" => "Admins", "CreateDate" => "2015-03-09T20:30:24.940Z", "GroupId" => "AIDGPMS9RO4H3FEXAMPLE"))
end

create_instance_profile_1_patch = @patch function create_instance_profile(a...; b...)
    return Dict{String, Any}("InstanceProfile" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:instance-profile/Webserver", "InstanceProfileId" => "AIPAJMBYC7DLSPEXAMPLE", "Path" => "/", "InstanceProfileName" => "Webserver", "CreateDate" => "2015-03-09T20:33:19.626Z", "Roles" => Any[]))
end

create_login_profile_1_patch = @patch function create_login_profile(a...; b...)
    return Dict{String, Any}("LoginProfile" => Dict{String, Any}("UserName" => "Bob", "PasswordResetRequired" => true, "CreateDate" => "2015-03-10T20:55:40.274Z"))
end

create_open_idconnect_provider_1_patch = @patch function create_open_idconnect_provider(a...; b...)
    return Dict{String, Any}("OpenIDConnectProviderArn" => "arn:aws:iam::123456789012:oidc-provider/server.example.com")
end

create_role_1_patch = @patch function create_role(a...; b...)
    return Dict{String, Any}("Role" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:role/Test-Role", "RoleName" => "Test-Role", "Path" => "/", "RoleId" => "AKIAIOSFODNN7EXAMPLE", "CreateDate" => "2013-06-07T20:43:32.821Z", "AssumeRolePolicyDocument" => "<URL-encoded-JSON>"))
end

create_user_1_patch = @patch function create_user(a...; b...)
    return Dict{String, Any}("User" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:user/Bob", "UserName" => "Bob", "Path" => "/", "UserId" => "AKIAIOSFODNN7EXAMPLE", "CreateDate" => "2013-06-08T03:20:41.270Z"))
end

generate_organizations_access_report_1_patch = @patch function generate_organizations_access_report(a...; b...)
    return Dict{String, Any}("JobId" => "examplea-1234-b567-cde8-90fg123abcd4")
end

generate_service_last_accessed_details_1_patch = @patch function generate_service_last_accessed_details(a...; b...)
    return Dict{String, Any}("JobId" => "examplef-1305-c245-eba4-71fe298bcda7")
end

get_account_password_policy_1_patch = @patch function get_account_password_policy(a...; b...)
    return Dict{String, Any}("PasswordPolicy" => Dict{String, Any}("HardExpiry" => false, "RequireLowercaseCharacters" => false, "RequireNumbers" => true, "RequireSymbols" => true, "RequireUppercaseCharacters" => false, "ExpirePasswords" => false, "MaxPasswordAge" => 90, "AllowUsersToChangePassword" => false, "MinimumPasswordLength" => 8, "PasswordReusePrevention" => 12))
end

get_account_summary_1_patch = @patch function get_account_summary(a...; b...)
    return Dict{String, Any}("SummaryMap" => Dict{String, Any}("GroupsPerUserQuota" => 10, "Users" => 27, "PolicyVersionsInUseQuota" => 10000, "AttachedPoliciesPerUserQuota" => 10, "GroupsQuota" => 100, "AccountMFAEnabled" => 0, "MFADevices" => 6, "VersionsPerPolicyQuota" => 5, "Groups" => 15, "MFADevicesInUse" => 3, "AttachedPoliciesPerRoleQuota" => 10, "ServerCertificatesQuota" => 20, "GroupPolicySizeQuota" => 5120, "PoliciesQuota" => 1000, "UsersQuota" => 5000, "AccountSigningCertificatesPresent" => 0, "Policies" => 8, "PolicyVersionsInUse" => 22, "AccountAccessKeysPresent" => 1, "AttachedPoliciesPerGroupQuota" => 10, "UserPolicySizeQuota" => 2048, "ServerCertificates" => 1, "PolicySizeQuota" => 5120, "SigningCertificatesPerUserQuota" => 2, "AccessKeysPerUserQuota" => 2, "GlobalEndpointTokenVersion" => 2))
end

get_instance_profile_1_patch = @patch function get_instance_profile(a...; b...)
    return Dict{String, Any}("InstanceProfile" => Dict{String, Any}("Arn" => "arn:aws:iam::336924118301:instance-profile/ExampleInstanceProfile", "InstanceProfileId" => "AID2MAB8DPLSRHEXAMPLE", "Path" => "/", "InstanceProfileName" => "ExampleInstanceProfile", "CreateDate" => "2013-06-12T23:52:02Z", "Roles" => Any[Dict{String, Any}("Arn" => "arn:aws:iam::336924118301:role/Test-Role", "RoleName" => "Test-Role", "Path" => "/", "RoleId" => "AIDGPMS9RO4H3FEXAMPLE", "CreateDate" => "2013-01-09T06:33:26Z", "AssumeRolePolicyDocument" => "<URL-encoded-JSON>")]))
end

get_login_profile_1_patch = @patch function get_login_profile(a...; b...)
    return Dict{String, Any}("LoginProfile" => Dict{String, Any}("UserName" => "Anika", "CreateDate" => "2012-09-21T23:03:39Z"))
end

get_organizations_access_report_1_patch = @patch function get_organizations_access_report(a...; b...)
    return Dict{String, Any}("AccessDetails" => Any[Dict{String, Any}("TotalAuthenticatedEntities" => 2, "EntityPath" => "o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-1a2b3c-k9l8m7n6o5example/111122223333", "LastAuthenticatedTime" => "2019-05-25T16:29:52Z", "ServiceName" => "Amazon DynamoDB", "ServiceNamespace" => "dynamodb", "Region" => "us-east-1"), Dict{String, Any}("TotalAuthenticatedEntities" => 4, "EntityPath" => "o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-1a2b3c-k9l8m7n6o5example/123456789012", "LastAuthenticatedTime" => "2019-06-15T13:12:06Z", "ServiceName" => "AWS Identity and Access Management", "ServiceNamespace" => "iam", "Region" => "us-east-1"), Dict{String, Any}("TotalAuthenticatedEntities" => 0, "ServiceName" => "Amazon Simple Storage Service", "ServiceNamespace" => "s3")], "JobStatus" => "COMPLETED", "NumberOfServicesNotAccessed" => 1, "JobCreationDate" => "2019-06-18T19:47:31.466Z", "JobCompletionDate" => "2019-06-18T19:47:35.241Z", "IsTruncated" => false, "NumberOfServicesAccessible" => 3)
end

get_role_1_patch = @patch function get_role(a...; b...)
    return Dict{String, Any}("Role" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:role/Test-Role", "MaxSessionDuration" => 3600, "RoleName" => "Test-Role", "Path" => "/", "RoleId" => "AROADBQP57FF2AEXAMPLE", "CreateDate" => "2013-04-18T05:01:58Z", "AssumeRolePolicyDocument" => "<URL-encoded-JSON>", "RoleLastUsed" => Dict{String, Any}("LastUsedDate" => "2019-11-18T05:01:58Z", "Region" => "us-east-1")))
end

get_service_last_accessed_details_1_patch = @patch function get_service_last_accessed_details(a...; b...)
    return Dict{String, Any}("JobStatus" => "COMPLETED", "JobCreationDate" => "2018-10-24T19:47:31.466Z", "JobCompletionDate" => "2018-10-24T19:47:35.241Z", "IsTruncated" => false, "ServicesLastAccessed" => Any[Dict{String, Any}("TotalAuthenticatedEntities" => 2, "LastAuthenticatedEntity" => "arn:aws:iam::123456789012:user/AWSExampleUser01", "ServiceName" => "AWS Identity and Access Management", "ServiceNamespace" => "iam", "LastAuthenticated" => "2018-10-24T19:11:00Z"), Dict{String, Any}("TotalAuthenticatedEntities" => 0, "ServiceName" => "Amazon Simple Storage Service", "ServiceNamespace" => "s3")])
end

get_service_last_accessed_details_with_entities_1_patch = @patch function get_service_last_accessed_details_with_entities(a...; b...)
    return Dict{String, Any}("JobStatus" => "COMPLETED", "EntityDetailsList" => Any[Dict{String, Any}("EntityInfo" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:user/AWSExampleUser01", "Id" => "AIDAEX2EXAMPLEB6IGCDC", "Path" => "/", "Type" => "USER", "Name" => "AWSExampleUser01"), "LastAuthenticated" => "2018-10-24T19:10:00Z"), Dict{String, Any}("EntityInfo" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:role/AWSExampleRole01", "Id" => "AROAEAEXAMPLEIANXSIU4", "Path" => "/", "Type" => "ROLE", "Name" => "AWSExampleRole01"))], "JobCreationDate" => "2018-10-24T19:47:31.466Z", "JobCompletionDate" => "2018-10-24T19:47:35.241Z", "IsTruncated" => false)
end

get_user_1_patch = @patch function get_user(a...; b...)
    return Dict{String, Any}("User" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:user/Bob", "UserName" => "Bob", "Path" => "/", "UserId" => "AKIAIOSFODNN7EXAMPLE", "CreateDate" => "2012-09-21T23:03:13Z"))
end

list_access_keys_1_patch = @patch function list_access_keys(a...; b...)
    return Dict{String, Any}("AccessKeyMetadata" => Any[Dict{String, Any}("UserName" => "Alice", "Status" => "Active", "AccessKeyId" => "AKIA111111111EXAMPLE", "CreateDate" => "2016-12-01T22:19:58Z"), Dict{String, Any}("UserName" => "Alice", "Status" => "Active", "AccessKeyId" => "AKIA222222222EXAMPLE", "CreateDate" => "2016-12-01T22:20:01Z")])
end

list_account_aliases_1_patch = @patch function list_account_aliases(a...; b...)
    return Dict{String, Any}("AccountAliases" => Any["exmaple-corporation"])
end

list_group_policies_1_patch = @patch function list_group_policies(a...; b...)
    return Dict{String, Any}("PolicyNames" => Any["AdminRoot", "KeyPolicy"])
end

list_groups_1_patch = @patch function list_groups(a...; b...)
    return Dict{String, Any}("Groups" => Any[Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:group/Admins", "Path" => "/division_abc/subdivision_xyz/", "GroupName" => "Admins", "CreateDate" => "2016-12-15T21:40:08.121Z", "GroupId" => "AGPA1111111111EXAMPLE"), Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/engineering/Test", "Path" => "/division_abc/subdivision_xyz/product_1234/engineering/", "GroupName" => "Test", "CreateDate" => "2016-11-30T14:10:01.156Z", "GroupId" => "AGP22222222222EXAMPLE"), Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/Managers", "Path" => "/division_abc/subdivision_xyz/product_1234/", "GroupName" => "Managers", "CreateDate" => "2016-06-12T20:14:52.032Z", "GroupId" => "AGPI3333333333EXAMPLE")])
end

list_groups_for_user_1_patch = @patch function list_groups_for_user(a...; b...)
    return Dict{String, Any}("Groups" => Any[Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/engineering/Test", "Path" => "/division_abc/subdivision_xyz/product_1234/engineering/", "GroupName" => "Test", "CreateDate" => "2016-11-30T14:10:01.156Z", "GroupId" => "AGP2111111111EXAMPLE"), Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/Managers", "Path" => "/division_abc/subdivision_xyz/product_1234/", "GroupName" => "Managers", "CreateDate" => "2016-06-12T20:14:52.032Z", "GroupId" => "AGPI222222222SEXAMPLE")])
end

list_policies_granting_service_access_1_patch = @patch function list_policies_granting_service_access(a...; b...)
    return Dict{String, Any}("PoliciesGrantingServiceAccess" => Any[Dict{String, Any}("Policies" => Any[Dict{String, Any}("PolicyArn" => "arn:aws:iam::123456789012:policy/ExampleIamPolicy", "PolicyName" => "ExampleIamPolicy", "PolicyType" => "MANAGED"), Dict{String, Any}("EntityName" => "AWSExampleGroup1", "EntityType" => "GROUP", "PolicyName" => "ExampleGroup1Policy", "PolicyType" => "INLINE")], "ServiceNamespace" => "iam"), Dict{String, Any}("Policies" => Any[Dict{String, Any}("PolicyArn" => "arn:aws:iam::123456789012:policy/ExampleEc2Policy", "PolicyName" => "ExampleEc2Policy", "PolicyType" => "MANAGED")], "ServiceNamespace" => "ec2")], "IsTruncated" => false)
end

list_role_tags_1_patch = @patch function list_role_tags(a...; b...)
    return Dict{String, Any}("Tags" => Any[Dict{String, Any}("Value" => "12345", "Key" => "Dept"), Dict{String, Any}("Value" => "Accounting", "Key" => "Team")], "IsTruncated" => false)
end

list_signing_certificates_1_patch = @patch function list_signing_certificates(a...; b...)
    return Dict{String, Any}("Certificates" => Any[Dict{String, Any}("UploadDate" => "2013-06-06T21:40:08Z", "UserName" => "Bob", "Status" => "Active", "CertificateBody" => "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----", "CertificateId" => "TA7SMP42TDN5Z26OBPJE7EXAMPLE")])
end

list_user_tags_1_patch = @patch function list_user_tags(a...; b...)
    return Dict{String, Any}("Tags" => Any[Dict{String, Any}("Value" => "12345", "Key" => "Dept"), Dict{String, Any}("Value" => "Accounting", "Key" => "Team")], "IsTruncated" => false)
end

list_users_1_patch = @patch function list_users(a...; b...)
    return Dict{String, Any}("Users" => Any[Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:user/division_abc/subdivision_xyz/engineering/Juan", "UserName" => "Juan", "Path" => "/division_abc/subdivision_xyz/engineering/", "PasswordLastUsed" => "2016-09-08T21:47:36Z", "UserId" => "AID2MAB8DPLSRHEXAMPLE", "CreateDate" => "2012-09-05T19:38:48Z"), Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:user/division_abc/subdivision_xyz/engineering/Anika", "UserName" => "Anika", "Path" => "/division_abc/subdivision_xyz/engineering/", "PasswordLastUsed" => "2016-09-24T16:18:07Z", "UserId" => "AIDIODR4TAW7CSEXAMPLE", "CreateDate" => "2014-04-09T15:43:45Z")])
end

list_virtual_mfadevices_1_patch = @patch function list_virtual_mfadevices(a...; b...)
    return Dict{String, Any}("VirtualMFADevices" => Any[Dict{String, Any}("SerialNumber" => "arn:aws:iam::123456789012:mfa/ExampleMFADevice"), Dict{String, Any}("SerialNumber" => "arn:aws:iam::123456789012:mfa/Juan")])
end

upload_server_certificate_1_patch = @patch function upload_server_certificate(a...; b...)
    return Dict{String, Any}("ServerCertificateMetadata" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:server-certificate/company/servercerts/ProdServerCert", "UploadDate" => "2010-05-08T01:02:03.004Z", "Path" => "/company/servercerts/", "Expiration" => "2012-05-08T01:02:03.004Z", "ServerCertificateName" => "ProdServerCert", "ServerCertificateId" => "ASCA1111111111EXAMPLE"))
end

upload_signing_certificate_1_patch = @patch function upload_signing_certificate(a...; b...)
    return Dict{String, Any}("Certificate" => Dict{String, Any}("UploadDate" => "2015-06-06T21:40:08.121Z", "UserName" => "Bob", "Status" => "Active", "CertificateBody" => "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----", "CertificateId" => "ID123456789012345EXAMPLE"))
end

