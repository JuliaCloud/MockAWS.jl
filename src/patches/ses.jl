using Mocking

describe_active_receipt_rule_set_1_patch = @patch function describe_active_receipt_rule_set(a...; b...)
    return Dict{String, Any}("Rules" => Any[Dict{String, Any}("Actions" => Any[Dict{String, Any}("S3Action" => Dict{String, Any}("ObjectKeyPrefix" => "email", "BucketName" => "MyBucket"))], "TlsPolicy" => "Optional", "Enabled" => true, "Name" => "MyRule", "ScanEnabled" => true)], "Metadata" => Dict{String, Any}("Name" => "default-rule-set", "CreatedTimestamp" => "2016-07-15T16:25:59.607Z"))
end

describe_receipt_rule_1_patch = @patch function describe_receipt_rule(a...; b...)
    return Dict{String, Any}("Rule" => Dict{String, Any}("Actions" => Any[Dict{String, Any}("S3Action" => Dict{String, Any}("ObjectKeyPrefix" => "email", "BucketName" => "MyBucket"))], "TlsPolicy" => "Optional", "Enabled" => true, "Name" => "MyRule", "ScanEnabled" => true))
end

describe_receipt_rule_set_1_patch = @patch function describe_receipt_rule_set(a...; b...)
    return Dict{String, Any}("Rules" => Any[Dict{String, Any}("Actions" => Any[Dict{String, Any}("S3Action" => Dict{String, Any}("ObjectKeyPrefix" => "email", "BucketName" => "MyBucket"))], "TlsPolicy" => "Optional", "Enabled" => true, "Name" => "MyRule", "ScanEnabled" => true)], "Metadata" => Dict{String, Any}("Name" => "MyRuleSet", "CreatedTimestamp" => "2016-07-15T16:25:59.607Z"))
end

get_account_sending_enabled_1_patch = @patch function get_account_sending_enabled(a...; b...)
    return Dict{String, Any}("Enabled" => true)
end

get_identity_dkim_attributes_1_patch = @patch function get_identity_dkim_attributes(a...; b...)
    return Dict{String, Any}("DkimAttributes" => Dict{String, Any}("user@example.com" => Dict{String, Any}("DkimVerificationStatus" => "NotStarted", "DkimEnabled" => false), "example.com" => Dict{String, Any}("DkimVerificationStatus" => "Success", "DkimTokens" => Any["EXAMPLEjcs5xoyqytjsotsijas7236gr", "EXAMPLEjr76cvoc6mysspnioorxsn6ep", "EXAMPLEkbmkqkhlm2lyz77ppkulerm4k"], "DkimEnabled" => true)))
end

get_identity_mail_from_domain_attributes_1_patch = @patch function get_identity_mail_from_domain_attributes(a...; b...)
    return Dict{String, Any}("MailFromDomainAttributes" => Dict{String, Any}("example.com" => Dict{String, Any}("BehaviorOnMXFailure" => "UseDefaultValue", "MailFromDomain" => "bounces.example.com", "MailFromDomainStatus" => "Success")))
end

get_identity_notification_attributes_1_patch = @patch function get_identity_notification_attributes(a...; b...)
    return Dict{String, Any}("NotificationAttributes" => Dict{String, Any}("example.com" => Dict{String, Any}("BounceTopic" => "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic", "ForwardingEnabled" => true, "HeadersInBounceNotificationsEnabled" => false, "HeadersInComplaintNotificationsEnabled" => false, "HeadersInDeliveryNotificationsEnabled" => false, "ComplaintTopic" => "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic", "DeliveryTopic" => "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic")))
end

get_identity_policies_1_patch = @patch function get_identity_policies(a...; b...)
    return Dict{String, Any}("Policies" => Dict{String, Any}("MyPolicy" => "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"stmt1469123904194\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:root\"},\"Action\":[\"ses:SendEmail\",\"ses:SendRawEmail\"],\"Resource\":\"arn:aws:ses:us-east-1:EXAMPLE65304:identity/example.com\"}]}"))
end

get_identity_verification_attributes_1_patch = @patch function get_identity_verification_attributes(a...; b...)
    return Dict{String, Any}("VerificationAttributes" => Dict{String, Any}("example.com" => Dict{String, Any}("VerificationToken" => "EXAMPLE3VYb9EDI2nTOQRi/Tf6MI/6bD6THIGiP1MVY=", "VerificationStatus" => "Success")))
end

get_send_quota_1_patch = @patch function get_send_quota(a...; b...)
    return Dict{String, Any}("SentLast24Hours" => 1, "Max24HourSend" => 200, "MaxSendRate" => 1)
end

get_send_statistics_1_patch = @patch function get_send_statistics(a...; b...)
    return Dict{String, Any}("SendDataPoints" => Any[Dict{String, Any}("DeliveryAttempts" => 5, "Complaints" => 0, "Rejects" => 0, "Bounces" => 0, "Timestamp" => "2016-07-13T22:43:00Z"), Dict{String, Any}("DeliveryAttempts" => 3, "Complaints" => 0, "Rejects" => 0, "Bounces" => 0, "Timestamp" => "2016-07-13T23:13:00Z"), Dict{String, Any}("DeliveryAttempts" => 1, "Complaints" => 0, "Rejects" => 0, "Bounces" => 0, "Timestamp" => "2016-07-13T21:13:00Z")])
end

list_identities_1_patch = @patch function list_identities(a...; b...)
    return Dict{String, Any}("NextToken" => "", "Identities" => Any["user@example.com"])
end

list_identity_policies_1_patch = @patch function list_identity_policies(a...; b...)
    return Dict{String, Any}("PolicyNames" => Any["MyPolicy"])
end

list_receipt_filters_1_patch = @patch function list_receipt_filters(a...; b...)
    return Dict{String, Any}("Filters" => Any[Dict{String, Any}("Name" => "MyFilter", "IpFilter" => Dict{String, Any}("Cidr" => "1.2.3.4/24", "Policy" => "Block"))])
end

list_receipt_rule_sets_1_patch = @patch function list_receipt_rule_sets(a...; b...)
    return Dict{String, Any}("NextToken" => "", "RuleSets" => Any[Dict{String, Any}("Name" => "MyRuleSet", "CreatedTimestamp" => "2016-07-15T16:25:59.607Z")])
end

list_verified_email_addresses_1_patch = @patch function list_verified_email_addresses(a...; b...)
    return Dict{String, Any}("VerifiedEmailAddresses" => Any["user1@example.com", "user2@example.com"])
end

send_email_1_patch = @patch function send_email(a...; b...)
    return Dict{String, Any}("MessageId" => "EXAMPLE78603177f-7a5433e7-8edb-42ae-af10-f0181f34d6ee-000000")
end

send_raw_email_1_patch = @patch function send_raw_email(a...; b...)
    return Dict{String, Any}("MessageId" => "EXAMPLEf3f73d99b-c63fb06f-d263-41f8-a0fb-d0dc67d56c07-000000")
end

verify_domain_dkim_1_patch = @patch function verify_domain_dkim(a...; b...)
    return Dict{String, Any}("DkimTokens" => Any["EXAMPLEq76owjnks3lnluwg65scbemvw", "EXAMPLEi3dnsj67hstzaj673klariwx2", "EXAMPLEwfbtcukvimehexktmdtaz6naj"])
end

verify_domain_identity_1_patch = @patch function verify_domain_identity(a...; b...)
    return Dict{String, Any}("VerificationToken" => "eoEmxw+YaYhb3h3iVJHuXMJXqeu1q1/wwmvjuEXAMPLE")
end

