using Mocking

cancel_rotate_secret_1_patch = @patch function cancel_rotate_secret(a...; b...)
    return Dict{String,Any}("Name" => "Name","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

create_secret_1_patch = @patch function create_secret(a...; b...)
    return Dict{String,Any}("VersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1","Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

delete_resource_policy_1_patch = @patch function delete_resource_policy(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseMasterSecret-a1b2c3")
end

delete_secret_1_patch = @patch function delete_secret(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3","DeletionDate" => "1524085349.095")
end

describe_secret_1_patch = @patch function describe_secret(a...; b...)
    return Dict{String,Any}("RotationLambdaARN" => "arn:aws:lambda:us-west-2:123456789012:function:MyTestRotationLambda","RotationEnabled" => true,"ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3","LastChangedDate" => 1.523477145729e9,"LastAccessedDate" => "1523923200","Tags" => Any[Dict{String,Any}("Value" => "AnotherValue","Key" => "SecondTag"), Dict{String,Any}("Value" => "SomeValue","Key" => "FirstTag")],"Name" => "MyTestDatabaseSecret","VersionIdsToStages" => Dict{String,Any}("EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => Any["AWSCURRENT"],"EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => Any["AWSPREVIOUS"]),"Description" => "My test database secret","LastRotatedDate" => 1.52574725372e9,"KmsKeyId" => "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE1-90ab-cdef-fedc-ba987KMSKEY1","RotationRules" => Dict{String,Any}("AutomaticallyAfterDays" => 30))
end

get_random_password_1_patch = @patch function get_random_password(a...; b...)
    return Dict{String,Any}("RandomPassword" => "N+Z43a,>vx7j O8^*<8i3")
end

get_resource_policy_1_patch = @patch function get_resource_policy(a...; b...)
    return Dict{String,Any}("ResourcePolicy" => "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}","Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

get_secret_value_1_patch = @patch function get_secret_value(a...; b...)
    return Dict{String,Any}("SecretString" => "{\n  \"username\":\"david\",\n  \"password\":\"BnQw&XDWgaEeT9XGTT29\"\n}\n","CreatedDate" => 1.523477145713e9,"VersionStages" => Any["AWSPREVIOUS"],"VersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1","Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

list_secret_version_ids_1_patch = @patch function list_secret_version_ids(a...; b...)
    return Dict{String,Any}("Versions" => Any[Dict{String,Any}("CreatedDate" => 1.523477145713e9,"VersionStages" => Any["AWSPREVIOUS"],"VersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE"), Dict{String,Any}("CreatedDate" => 1.523486221391e9,"VersionStages" => Any["AWSCURRENT"],"VersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE"), Dict{String,Any}("CreatedDate" => 1.51197446236e9,"VersionId" => "EXAMPLE3-90ab-cdef-fedc-ba987EXAMPLE;")],"Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

list_secrets_1_patch = @patch function list_secrets(a...; b...)
    return Dict{String,Any}("SecretList" => Any[Dict{String,Any}("Description" => "My test database secret","SecretVersionsToStages" => Dict{String,Any}("EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => Any["AWSCURRENT"]),"Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3","LastChangedDate" => 1.523477145729e9), Dict{String,Any}("Description" => "Another secret created for a different database","SecretVersionsToStages" => Dict{String,Any}("EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => Any["AWSCURRENT"]),"Name" => "MyTestDatabaseSecret1","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret1-d4e5f6","LastChangedDate" => 1.523482025685e9)])
end

put_resource_policy_1_patch = @patch function put_resource_policy(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

put_secret_value_1_patch = @patch function put_secret_value(a...; b...)
    return Dict{String,Any}("VersionStages" => Any["AWSCURRENT"],"VersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE","Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

restore_secret_1_patch = @patch function restore_secret(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

rotate_secret_1_patch = @patch function rotate_secret(a...; b...)
    return Dict{String,Any}("VersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2","Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

rotate_secret_2_patch = @patch function rotate_secret(a...; b...)
    return Dict{String,Any}("SecretARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3","SecretName" => "MyTestDatabaseSecret","SecretVersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2")
end

update_secret_1_patch = @patch function update_secret(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

update_secret_2_patch = @patch function update_secret(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

update_secret_3_patch = @patch function update_secret(a...; b...)
    return Dict{String,Any}("VersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE","Name" => "MyTestDatabaseSecret","ARN" => "aws:arn:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

update_secret_version_stage_1_patch = @patch function update_secret_version_stage(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

update_secret_version_stage_2_patch = @patch function update_secret_version_stage(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

update_secret_version_stage_3_patch = @patch function update_secret_version_stage(a...; b...)
    return Dict{String,Any}("Name" => "MyTestDatabaseSecret","ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3")
end

validate_resource_policy_1_patch = @patch function validate_resource_policy(a...; b...)
    return Dict{String,Any}("PolicyValidationPassed" => true,"ValidationErrors" => Any[])
end

