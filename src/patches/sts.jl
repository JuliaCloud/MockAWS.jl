using Mocking

assume_role_1_patch = @patch function assume_role(a...; b...)
    return Dict{String,Any}("PackedPolicySize" => 8,"Credentials" => Dict{String,Any}("SecretAccessKey" => "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY","SessionToken" => "AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmxfpSPfIeoIYRqTflfKD8YUuwthAx7mSEI/qkPpKPi/kMcGdQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==","AccessKeyId" => "AKIAIOSFODNN7EXAMPLE","Expiration" => "2011-07-15T23:28:33.359Z"),"AssumedRoleUser" => Dict{String,Any}("Arn" => "arn:aws:sts::123456789012:assumed-role/demo/Bob","AssumedRoleId" => "ARO123EXAMPLE123:Bob"))
end

assume_role_with_saml_1_patch = @patch function assume_role_with_saml(a...; b...)
    return Dict{String,Any}("PackedPolicySize" => 6,"Subject" => "SamlExample","Credentials" => Dict{String,Any}("SecretAccessKey" => "8P+SQvWIuLnKhh8d++jpw0nNmQRBZvNEXAMPLEKEY","SessionToken" => "IQoJb3JpZ2luX2VjEOz////////////////////wEXAMPLEtMSJHMEUCIDoKK3JH9uGQE1z0sINr5M4jk+Na8KHDcCYRVjJCZEvOAiEA3OvJGtw1EcViOleS2vhs8VdCKFJQWPQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==","AccessKeyId" => "ASIAV3ZUEFP6EXAMPLE","Expiration" => "2019-11-01T20:26:47Z"),"AssumedRoleUser" => Dict{String,Any}("Arn" => "arn:aws:sts::123456789012:assumed-role/TestSaml","AssumedRoleId" => "ARO456EXAMPLE789:TestSaml"),"SubjectType" => "transient","Audience" => "https://signin.aws.amazon.com/saml","Issuer" => "https://integ.example.com/idp/shibboleth","NameQualifier" => "SbdGOnUkh1i4+EXAMPLExL/jEvs=")
end

assume_role_with_web_identity_1_patch = @patch function assume_role_with_web_identity(a...; b...)
    return Dict{String,Any}("Provider" => "www.amazon.com","PackedPolicySize" => 123,"Credentials" => Dict{String,Any}("SecretAccessKey" => "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY","SessionToken" => "AQoDYXdzEE0a8ANXXXXXXXXNO1ewxE5TijQyp+IEXAMPLE","AccessKeyId" => "AKIAIOSFODNN7EXAMPLE","Expiration" => "2014-10-24T23:00:23Z"),"AssumedRoleUser" => Dict{String,Any}("Arn" => "arn:aws:sts::123456789012:assumed-role/FederatedWebIdentityRole/app1","AssumedRoleId" => "AROACLKWSDQRAOEXAMPLE:app1"),"Audience" => "client.5498841531868486423.1548@apps.example.com","SubjectFromWebIdentityToken" => "amzn1.account.AF6RHO7KZU5XRVQJGXK6HEXAMPLE")
end

decode_authorization_message_1_patch = @patch function decode_authorization_message(a...; b...)
    return Dict{String,Any}("DecodedMessage" => "{\"allowed\": \"false\",\"explicitDeny\": \"false\",\"matchedStatements\": \"\",\"failures\": \"\",\"context\": {\"principal\": {\"id\": \"AIDACKCEVSQ6C2EXAMPLE\",\"name\": \"Bob\",\"arn\": \"arn:aws:iam::123456789012:user/Bob\"},\"action\": \"ec2:StopInstances\",\"resource\": \"arn:aws:ec2:us-east-1:123456789012:instance/i-dd01c9bd\",\"conditions\": [{\"item\": {\"key\": \"ec2:Tenancy\",\"values\": [\"default\"]},{\"item\": {\"key\": \"ec2:ResourceTag/elasticbeanstalk:environment-name\",\"values\": [\"Default-Environment\"]}},(Additional items ...)]}}")
end

get_caller_identity_1_patch = @patch function get_caller_identity(a...; b...)
    return Dict{String,Any}("Arn" => "arn:aws:iam::123456789012:user/Alice","UserId" => "AKIAI44QH8DHBEXAMPLE","Account" => "123456789012")
end

get_caller_identity_2_patch = @patch function get_caller_identity(a...; b...)
    return Dict{String,Any}("Arn" => "arn:aws:sts::123456789012:assumed-role/my-role-name/my-role-session-name","UserId" => "AKIAI44QH8DHBEXAMPLE:my-role-session-name","Account" => "123456789012")
end

get_caller_identity_3_patch = @patch function get_caller_identity(a...; b...)
    return Dict{String,Any}("Arn" => "arn:aws:sts::123456789012:federated-user/my-federated-user-name","UserId" => "123456789012:my-federated-user-name","Account" => "123456789012")
end

get_federation_token_1_patch = @patch function get_federation_token(a...; b...)
    return Dict{String,Any}("FederatedUser" => Dict{String,Any}("Arn" => "arn:aws:sts::123456789012:federated-user/Bob","FederatedUserId" => "123456789012:Bob"),"PackedPolicySize" => 8,"Credentials" => Dict{String,Any}("SecretAccessKey" => "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY","SessionToken" => "AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmxfpSPfIeoIYRqTflfKD8YUuwthAx7mSEI/qkPpKPi/kMcGdQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==","AccessKeyId" => "AKIAIOSFODNN7EXAMPLE","Expiration" => "2011-07-15T23:28:33.359Z"))
end

get_session_token_1_patch = @patch function get_session_token(a...; b...)
    return Dict{String,Any}("Credentials" => Dict{String,Any}("SecretAccessKey" => "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY","SessionToken" => "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKwRcOIfrRh3c/LTo6UDdyJwOOvEVPvLXCrrrUtdnniCEXAMPLE/IvU1dYUg2RVAJBanLiHb4IgRmpRV3zrkuWJOgQs8IZZaIv2BXIa2R4OlgkBN9bkUDNCJiBeb/AXlzBBko7b15fjrBs2+cTQtpZ3CYWFXG8C5zqx37wnOE49mRl/+OtkIKGO7fAE","AccessKeyId" => "AKIAIOSFODNN7EXAMPLE","Expiration" => "2011-07-11T19:55:29.611Z"))
end

