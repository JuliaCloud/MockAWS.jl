using Mocking

accept_handshake_1_patch = @patch function accept_handshake(a...; b...)
    return Dict{String, Any}("Handshake" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", "Id" => "h-examplehandshakeid111", "RequestedTimestamp" => "20170214T1215Z", "Parties" => Any[Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION"), Dict{String, Any}("Id" => "juan@example.com", "Type" => "EMAIL")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION", "Resources" => Any[Dict{String, Any}("Value" => "bill@amazon.com", "Type" => "MASTER_EMAIL"), Dict{String, Any}("Value" => "Org Master Account", "Type" => "MASTER_NAME"), Dict{String, Any}("Value" => "ALL", "Type" => "ORGANIZATION_FEATURE_SET")]), Dict{String, Any}("Value" => "222222222222", "Type" => "ACCOUNT")], "ExpirationTimestamp" => "20170228T1215Z", "Action" => "INVITE", "State" => "ACCEPTED"))
end

cancel_handshake_1_patch = @patch function cancel_handshake(a...; b...)
    return Dict{String, Any}("Handshake" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", "Id" => "h-examplehandshakeid111", "RequestedTimestamp" => "20170214T1215Z", "Parties" => Any[Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION"), Dict{String, Any}("Id" => "susan@example.com", "Type" => "EMAIL")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION", "Resources" => Any[Dict{String, Any}("Value" => "bill@example.com", "Type" => "MASTER_EMAIL"), Dict{String, Any}("Value" => "Master Account", "Type" => "MASTER_NAME"), Dict{String, Any}("Value" => "CONSOLIDATED_BILLING", "Type" => "ORGANIZATION_FEATURE_SET")]), Dict{String, Any}("Value" => "222222222222", "Type" => "ACCOUNT"), Dict{String, Any}("Value" => "This is a request for Susan's account to join Bob's organization.", "Type" => "NOTES")], "ExpirationTimestamp" => "20170228T1215Z", "Action" => "INVITE", "State" => "CANCELED"))
end

create_account_1_patch = @patch function create_account(a...; b...)
    return Dict{String, Any}("CreateAccountStatus" => Dict{String, Any}("Id" => "car-examplecreateaccountrequestid111", "State" => "IN_PROGRESS"))
end

create_organization_1_patch = @patch function create_organization(a...; b...)
    return Dict{String, Any}("Organization" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:organization/o-exampleorgid", "Id" => "o-exampleorgid", "MasterAccountId" => "111111111111", "AvailablePolicyTypes" => Any[Dict{String, Any}("Status" => "ENABLED", "Type" => "SERVICE_CONTROL_POLICY")], "MasterAccountEmail" => "bill@example.com", "FeatureSet" => "ALL", "MasterAccountArn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111"))
end

create_organization_2_patch = @patch function create_organization(a...; b...)
    return Dict{String, Any}("Organization" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:organization/o-exampleorgid", "Id" => "o-exampleorgid", "MasterAccountId" => "111111111111", "AvailablePolicyTypes" => Any[], "MasterAccountEmail" => "bill@example.com", "FeatureSet" => "CONSOLIDATED_BILLING", "MasterAccountArn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111"))
end

create_organizational_unit_1_patch = @patch function create_organizational_unit(a...; b...)
    return Dict{String, Any}("OrganizationalUnit" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111", "Id" => "ou-examplerootid111-exampleouid111", "Name" => "AccountingOU"))
end

create_policy_1_patch = @patch function create_policy(a...; b...)
    return Dict{String, Any}("Policy" => Dict{String, Any}("Content" => "{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"Action\":\"s3:*\"}}", "PolicySummary" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", "Description" => "Allows delegation of all S3 actions", "Type" => "SERVICE_CONTROL_POLICY", "Name" => "AllowAllS3Actions")))
end

decline_handshake_1_patch = @patch function decline_handshake(a...; b...)
    return Dict{String, Any}("Handshake" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", "Id" => "h-examplehandshakeid111", "RequestedTimestamp" => "2016-11-30T19:27:58Z", "Parties" => Any[Dict{String, Any}("Id" => "222222222222", "Type" => "ACCOUNT"), Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION", "Resources" => Any[Dict{String, Any}("Value" => "bill@example.com", "Type" => "MASTER_EMAIL"), Dict{String, Any}("Value" => "Master Account", "Type" => "MASTER_NAME")]), Dict{String, Any}("Value" => "222222222222", "Type" => "ACCOUNT"), Dict{String, Any}("Value" => "This is an invitation to Susan's account to join the Bill's organization.", "Type" => "NOTES")], "ExpirationTimestamp" => "2016-12-15T19:27:58Z", "Action" => "INVITE", "State" => "DECLINED"))
end

describe_account_1_patch = @patch function describe_account(a...; b...)
    return Dict{String, Any}("Account" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/555555555555", "Id" => "555555555555", "Email" => "anika@example.com", "Name" => "Beta Account"))
end

describe_create_account_status_1_patch = @patch function describe_create_account_status(a...; b...)
    return Dict{String, Any}("CreateAccountStatus" => Dict{String, Any}("Id" => "car-exampleaccountcreationrequestid", "AccountId" => "333333333333", "State" => "SUCCEEDED"))
end

describe_handshake_1_patch = @patch function describe_handshake(a...; b...)
    return Dict{String, Any}("Handshake" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", "Id" => "h-examplehandshakeid111", "RequestedTimestamp" => "2016-11-30T17:24:58.046Z", "Parties" => Any[Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION"), Dict{String, Any}("Id" => "333333333333", "Type" => "ACCOUNT")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION", "Resources" => Any[Dict{String, Any}("Value" => "bill@example.com", "Type" => "MASTER_EMAIL"), Dict{String, Any}("Value" => "Master Account", "Type" => "MASTER_NAME")]), Dict{String, Any}("Value" => "333333333333", "Type" => "ACCOUNT")], "ExpirationTimestamp" => "2016-11-30T17:24:58.046Z", "Action" => "INVITE", "State" => "OPEN"))
end

describe_organization_1_patch = @patch function describe_organization(a...; b...)
    return Dict{String, Any}("Organization" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:organization/o-exampleorgid", "Id" => "o-exampleorgid", "AvailablePolicyTypes" => Any[Dict{String, Any}("Status" => "ENABLED", "Type" => "SERVICE_CONTROL_POLICY")], "MasterAccountEmail" => "bill@example.com", "FeatureSet" => "ALL", "MasterAccountArn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111"))
end

describe_organizational_unit_1_patch = @patch function describe_organizational_unit(a...; b...)
    return Dict{String, Any}("OrganizationalUnit" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111", "Id" => "ou-examplerootid111-exampleouid111", "Name" => "Accounting Group"))
end

describe_policy_1_patch = @patch function describe_policy(a...; b...)
    return Dict{String, Any}("Policy" => Dict{String, Any}("Content" => "{\\n  \\\"Version\\\": \\\"2012-10-17\\\",\\n  \\\"Statement\\\": [\\n    {\\n      \\\"Effect\\\": \\\"Allow\\\",\\n      \\\"Action\\\": \\\"*\\\",\\n      \\\"Resource\\\": \\\"*\\\"\\n    }\\n  ]\\n}", "PolicySummary" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", "Id" => "p-examplepolicyid111", "Description" => "Enables admins to delegate S3 permissions", "AwsManaged" => false, "Type" => "SERVICE_CONTROL_POLICY", "Name" => "AllowAllS3Actions")))
end

disable_policy_type_1_patch = @patch function disable_policy_type(a...; b...)
    return Dict{String, Any}("Root" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111", "Id" => "r-examplerootid111", "PolicyTypes" => Any[], "Name" => "Root"))
end

enable_all_features_1_patch = @patch function enable_all_features(a...; b...)
    return Dict{String, Any}("Handshake" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/enable_all_features/h-examplehandshakeid111", "Id" => "h-examplehandshakeid111", "RequestedTimestamp" => "2017-02-13T09:35:40.05Z", "Parties" => Any[Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION")], "ExpirationTimestamp" => "2017-02-28T09:35:40.05Z", "Action" => "ENABLE_ALL_FEATURES", "State" => "REQUESTED"))
end

enable_policy_type_1_patch = @patch function enable_policy_type(a...; b...)
    return Dict{String, Any}("Root" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111", "Id" => "r-examplerootid111", "PolicyTypes" => Any[Dict{String, Any}("Status" => "ENABLED", "Type" => "SERVICE_CONTROL_POLICY")], "Name" => "Root"))
end

invite_account_to_organization_1_patch = @patch function invite_account_to_organization(a...; b...)
    return Dict{String, Any}("Handshake" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", "Id" => "h-examplehandshakeid111", "RequestedTimestamp" => "2017-02-01T09:36:05.02Z", "Parties" => Any[Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION"), Dict{String, Any}("Id" => "juan@example.com", "Type" => "EMAIL")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION", "Resources" => Any[Dict{String, Any}("Value" => "bill@amazon.com", "Type" => "MASTER_EMAIL"), Dict{String, Any}("Value" => "Org Master Account", "Type" => "MASTER_NAME"), Dict{String, Any}("Value" => "FULL", "Type" => "ORGANIZATION_FEATURE_SET")]), Dict{String, Any}("Value" => "juan@example.com", "Type" => "EMAIL")], "ExpirationTimestamp" => "2017-02-16T09:36:05.02Z", "Action" => "INVITE", "State" => "OPEN"))
end

list_accounts_1_patch = @patch function list_accounts(a...; b...)
    return Dict{String, Any}("Accounts" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111", "Id" => "111111111111", "Email" => "bill@example.com", "JoinedMethod" => "INVITED", "Status" => "ACTIVE", "JoinedTimestamp" => "20161215T193015Z", "Name" => "Master Account"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/222222222222", "Id" => "222222222222", "Email" => "alice@example.com", "JoinedMethod" => "INVITED", "Status" => "ACTIVE", "JoinedTimestamp" => "20161215T210221Z", "Name" => "Developer Account"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333", "Id" => "333333333333", "Email" => "juan@example.com", "JoinedMethod" => "INVITED", "Status" => "ACTIVE", "JoinedTimestamp" => "20161215T210347Z", "Name" => "Test Account"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/444444444444", "Id" => "444444444444", "Email" => "anika@example.com", "JoinedMethod" => "INVITED", "Status" => "ACTIVE", "JoinedTimestamp" => "20161215T210332Z", "Name" => "Production Account")])
end

list_accounts_for_parent_1_patch = @patch function list_accounts_for_parent(a...; b...)
    return Dict{String, Any}("Accounts" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333", "Id" => "333333333333", "Email" => "juan@example.com", "JoinedMethod" => "INVITED", "Status" => "ACTIVE", "JoinedTimestamp" => 1.481835795536e9, "Name" => "Development Account"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/444444444444", "Id" => "444444444444", "Email" => "anika@example.com", "JoinedMethod" => "INVITED", "Status" => "ACTIVE", "JoinedTimestamp" => 1.481835812143e9, "Name" => "Test Account")])
end

list_children_1_patch = @patch function list_children(a...; b...)
    return Dict{String, Any}("Children" => Any[Dict{String, Any}("Id" => "ou-examplerootid111-exampleouid111", "Type" => "ORGANIZATIONAL_UNIT"), Dict{String, Any}("Id" => "ou-examplerootid111-exampleouid222", "Type" => "ORGANIZATIONAL_UNIT")])
end

list_create_account_status_1_patch = @patch function list_create_account_status(a...; b...)
    return Dict{String, Any}("CreateAccountStatuses" => Any[Dict{String, Any}("Id" => "car-exampleaccountcreationrequestid1", "RequestedTimestamp" => "2017-01-15T13:45:23.01Z", "AccountId" => "444444444444", "State" => "SUCCEEDED", "CompletedTimestamp" => "2017-01-15T13:45:23.6Z", "AccountName" => "Developer Test Account")])
end

list_create_account_status_2_patch = @patch function list_create_account_status(a...; b...)
    return Dict{String, Any}("CreateAccountStatuses" => Any[Dict{String, Any}("Id" => "car-exampleaccountcreationrequestid2", "RequestedTimestamp" => "2017-01-15T13:45:23.01Z", "State" => "IN_PROGRESS", "AccountName" => "Production Account")])
end

list_handshakes_for_account_1_patch = @patch function list_handshakes_for_account(a...; b...)
    return Dict{String, Any}("Handshakes" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", "Id" => "h-examplehandshakeid111", "RequestedTimestamp" => "2017-01-13T14:35:23.3Z", "Parties" => Any[Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION"), Dict{String, Any}("Id" => "juan@example.com", "Type" => "EMAIL")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION", "Resources" => Any[Dict{String, Any}("Value" => "bill@amazon.com", "Type" => "MASTER_EMAIL"), Dict{String, Any}("Value" => "Org Master Account", "Type" => "MASTER_NAME"), Dict{String, Any}("Value" => "FULL", "Type" => "ORGANIZATION_FEATURE_SET")]), Dict{String, Any}("Value" => "juan@example.com", "Type" => "EMAIL")], "ExpirationTimestamp" => "2017-01-28T14:35:23.3Z", "Action" => "INVITE", "State" => "OPEN")])
end

list_handshakes_for_organization_1_patch = @patch function list_handshakes_for_organization(a...; b...)
    return Dict{String, Any}("Handshakes" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", "Id" => "h-examplehandshakeid111", "RequestedTimestamp" => "2017-01-13T14:35:23.3Z", "Parties" => Any[Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION"), Dict{String, Any}("Id" => "juan@example.com", "Type" => "EMAIL")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION", "Resources" => Any[Dict{String, Any}("Value" => "bill@amazon.com", "Type" => "MASTER_EMAIL"), Dict{String, Any}("Value" => "Org Master Account", "Type" => "MASTER_NAME"), Dict{String, Any}("Value" => "FULL", "Type" => "ORGANIZATION_FEATURE_SET")]), Dict{String, Any}("Value" => "juan@example.com", "Type" => "EMAIL")], "ExpirationTimestamp" => "2017-01-28T14:35:23.3Z", "Action" => "INVITE", "State" => "OPEN"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111", "Id" => "h-examplehandshakeid222", "RequestedTimestamp" => "2017-01-13T14:35:23.3Z", "Parties" => Any[Dict{String, Any}("Id" => "o-exampleorgid", "Type" => "ORGANIZATION"), Dict{String, Any}("Id" => "anika@example.com", "Type" => "EMAIL")], "Resources" => Any[Dict{String, Any}("Value" => "o-exampleorgid", "Type" => "ORGANIZATION", "Resources" => Any[Dict{String, Any}("Value" => "bill@example.com", "Type" => "MASTER_EMAIL"), Dict{String, Any}("Value" => "Master Account", "Type" => "MASTER_NAME")]), Dict{String, Any}("Value" => "anika@example.com", "Type" => "EMAIL"), Dict{String, Any}("Value" => "This is an invitation to Anika's account to join Bill's organization.", "Type" => "NOTES")], "ExpirationTimestamp" => "2017-01-28T14:35:23.3Z", "Action" => "INVITE", "State" => "ACCEPTED")])
end

list_organizational_units_for_parent_1_patch = @patch function list_organizational_units_for_parent(a...; b...)
    return Dict{String, Any}("OrganizationalUnits" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examlerootid111-exampleouid111", "Id" => "ou-examplerootid111-exampleouid111", "Name" => "Development"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examlerootid111-exampleouid222", "Id" => "ou-examplerootid111-exampleouid222", "Name" => "Production")])
end

list_parents_1_patch = @patch function list_parents(a...; b...)
    return Dict{String, Any}("Parents" => Any[Dict{String, Any}("Id" => "ou-examplerootid111-exampleouid111", "Type" => "ORGANIZATIONAL_UNIT")])
end

list_policies_1_patch = @patch function list_policies(a...; b...)
    return Dict{String, Any}("Policies" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", "Id" => "p-examplepolicyid111", "Description" => "Enables account admins to delegate permissions for any S3 actions to users and roles in their accounts.", "AwsManaged" => false, "Type" => "SERVICE_CONTROL_POLICY", "Name" => "AllowAllS3Actions"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid222", "Id" => "p-examplepolicyid222", "Description" => "Enables account admins to delegate permissions for any EC2 actions to users and roles in their accounts.", "AwsManaged" => false, "Type" => "SERVICE_CONTROL_POLICY", "Name" => "AllowAllEC2Actions"), Dict{String, Any}("Arn" => "arn:aws:organizations::aws:policy/service_control_policy/p-FullAWSAccess", "Id" => "p-FullAWSAccess", "Description" => "Allows access to every operation", "AwsManaged" => true, "Type" => "SERVICE_CONTROL_POLICY", "Name" => "FullAWSAccess")])
end

list_policies_for_target_1_patch = @patch function list_policies_for_target(a...; b...)
    return Dict{String, Any}("Policies" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid222", "Id" => "p-examplepolicyid222", "Description" => "Enables account admins to delegate permissions for any EC2 actions to users and roles in their accounts.", "AwsManaged" => false, "Type" => "SERVICE_CONTROL_POLICY", "Name" => "AllowAllEC2Actions")])
end

list_roots_1_patch = @patch function list_roots(a...; b...)
    return Dict{String, Any}("Roots" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111", "Id" => "r-examplerootid111", "PolicyTypes" => Any[Dict{String, Any}("Status" => "ENABLED", "Type" => "SERVICE_CONTROL_POLICY")], "Name" => "Root")])
end

list_targets_for_policy_1_patch = @patch function list_targets_for_policy(a...; b...)
    return Dict{String, Any}("Targets" => Any[Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111", "Type" => "ROOT", "Name" => "Root", "TargetId" => "r-examplerootid111"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333;", "Type" => "ACCOUNT", "Name" => "Developer Test Account", "TargetId" => "333333333333"), Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111", "Type" => "ORGANIZATIONAL_UNIT", "Name" => "Accounting", "TargetId" => "ou-examplerootid111-exampleouid111")])
end

update_organizational_unit_1_patch = @patch function update_organizational_unit(a...; b...)
    return Dict{String, Any}("OrganizationalUnit" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111", "Id" => "ou-examplerootid111-exampleouid111", "Name" => "AccountingOU"))
end

update_policy_1_patch = @patch function update_policy(a...; b...)
    return Dict{String, Any}("Policy" => Dict{String, Any}("Content" => "{ \"Version\": \"2012-10-17\", \"Statement\": { \"Effect\": \"Allow\", \"Action\": \"ec2:*\", \"Resource\": \"*\" } }", "PolicySummary" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", "Id" => "p-examplepolicyid111", "Description" => "This description replaces the original.", "AwsManaged" => false, "Type" => "SERVICE_CONTROL_POLICY", "Name" => "Renamed-Policy")))
end

update_policy_2_patch = @patch function update_policy(a...; b...)
    return Dict{String, Any}("Policy" => Dict{String, Any}("Content" => "{ \\\"Version\\\": \\\"2012-10-17\\\", \\\"Statement\\\": { \\\"Effect\\\": \\\"Allow\\\", \\\"Action\\\": \\\"s3:*\\\", \\\"Resource\\\": \\\"*\\\" } }", "PolicySummary" => Dict{String, Any}("Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111", "Id" => "p-examplepolicyid111", "Description" => "This description replaces the original.", "AwsManaged" => false, "Type" => "SERVICE_CONTROL_POLICY", "Name" => "Renamed-Policy")))
end

