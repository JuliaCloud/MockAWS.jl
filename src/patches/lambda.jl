using Mocking

add_layer_version_permission_1_patch = @patch function add_layer_version_permission(a...; b...)
    return Dict{String, Any}("RevisionId" => "35d87451-f796-4a3f-a618-95a3671b0a0c", "Statement" => "{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::223456789012:root\"},\"Action\":\"lambda:GetLayerVersion\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:layer:my-layer:1\"}")
end

add_permission_1_patch = @patch function add_permission(a...; b...)
    return Dict{String, Any}("Statement" => "{\"Sid\":\"s3\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"s3.amazonaws.com\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"123456789012\"},\"ArnLike\":{\"AWS:SourceArn\":\"arn:aws:s3:::my-bucket-1xpuxmplzrlbh\"}}}")
end

add_permission_2_patch = @patch function add_permission(a...; b...)
    return Dict{String, Any}("Statement" => "{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::223456789012:root\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function\"}")
end

create_alias_1_patch = @patch function create_alias(a...; b...)
    return Dict{String, Any}("FunctionVersion" => "1", "Description" => "alias for live version of function", "RevisionId" => "873282ed-xmpl-4dc8-a069-d0c647e470c6", "AliasArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function:LIVE", "Name" => "LIVE")
end

create_event_source_mapping_1_patch = @patch function create_event_source_mapping(a...; b...)
    return Dict{String, Any}("StateTransitionReason" => "USER_INITIATED", "LastModified" => 1.569284520333e9, "UUID" => "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE", "BatchSize" => 5, "EventSourceArn" => "arn:aws:sqs:us-west-2:123456789012:my-queue", "State" => "Creating", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function")
end

create_function_1_patch = @patch function create_function(a...; b...)
    return Dict{String, Any}("FunctionName" => "my-function", "Version" => "1", "Environment" => Dict{String, Any}("Variables" => Dict{String, Any}("BUCKET" => "my-bucket-1xpuxmplzrlbh", "PREFIX" => "inbound")), "LastModified" => "2020-04-10T19:06:32.563+0000", "MemorySize" => 256, "TracingConfig" => Dict{String, Any}("Mode" => "Active"), "CodeSize" => 5797206, "State" => "Active", "Runtime" => "nodejs12.x", "Timeout" => 15, "CodeSha256" => "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=", "LastUpdateStatus" => "Successful", "KMSKeyArn" => "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966", "Role" => "arn:aws:iam::123456789012:role/lambda-role", "Handler" => "index.handler", "Description" => "Process image objects from Amazon S3.", "RevisionId" => "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function")
end

delete_event_source_mapping_1_patch = @patch function delete_event_source_mapping(a...; b...)
    return Dict{String, Any}("StateTransitionReason" => "USER_INITIATED", "LastModified" => "\${timestamp}", "UUID" => "14e0db71-xmpl-4eb5-b481-8945cf9d10c2", "BatchSize" => 5, "EventSourceArn" => "arn:aws:sqs:us-west-2:123456789012:my-queue", "State" => "Enabled", "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function")
end

get_account_settings_1_patch = @patch function get_account_settings(a...; b...)
    return Dict{String, Any}("AccountUsage" => Dict{String, Any}("FunctionCount" => 4, "TotalCodeSize" => 9426), "AccountLimit" => Dict{String, Any}("CodeSizeUnzipped" => 262144000, "CodeSizeZipped" => 52428800, "ConcurrentExecutions" => 1000, "TotalCodeSize" => 80530636800, "UnreservedConcurrentExecutions" => 1000))
end

get_alias_1_patch = @patch function get_alias(a...; b...)
    return Dict{String, Any}("FunctionVersion" => "3", "Description" => "Production environment BLUE.", "RevisionId" => "594f41fb-xmpl-4c20-95c7-6ca5f2a92c93", "AliasArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function:BLUE", "Name" => "BLUE")
end

get_event_source_mapping_1_patch = @patch function get_event_source_mapping(a...; b...)
    return Dict{String, Any}("MaximumRecordAgeInSeconds" => 604800, "DestinationConfig" => Dict{String, Any}(), "LastModified" => "\${timestamp}", "State" => "Creating", "StateTransitionReason" => "User action", "MaximumRetryAttempts" => 10000, "LastProcessingResult" => "No records processed", "UUID" => "14e0db71-xmpl-4eb5-b481-8945cf9d10c2", "BatchSize" => 500, "EventSourceArn" => "arn:aws:sqs:us-east-2:123456789012:mySQSqueue", "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:myFunction", "BisectBatchOnFunctionError" => false)
end

get_function_1_patch = @patch function get_function(a...; b...)
    return Dict{String, Any}("Configuration" => Dict{String, Any}("FunctionName" => "my-function", "Version" => "\$LATEST", "Environment" => Dict{String, Any}("Variables" => Dict{String, Any}("BUCKET" => "my-bucket-1xpuxmplzrlbh", "PREFIX" => "inbound")), "LastModified" => "2020-04-10T19:06:32.563+0000", "MemorySize" => 256, "TracingConfig" => Dict{String, Any}("Mode" => "Active"), "CodeSize" => 5797206, "State" => "Active", "Runtime" => "nodejs12.x", "Timeout" => 15, "CodeSha256" => "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=", "LastUpdateStatus" => "Successful", "KMSKeyArn" => "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966", "Role" => "arn:aws:iam::123456789012:role/lambda-role", "Handler" => "index.handler", "Description" => "Process image objects from Amazon S3.", "RevisionId" => "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function"), "Tags" => Dict{String, Any}("DEPARTMENT" => "Assets"), "Code" => Dict{String, Any}("RepositoryType" => "S3", "Location" => "https://awslambda-us-west-2-tasks.s3.us-west-2.amazonaws.com/snapshots/123456789012/my-function-e7d9d1ed-xmpl-4f79-904a-4b87f2681f30?versionId=sH3TQwBOaUy..."))
end

get_function_concurrency_1_patch = @patch function get_function_concurrency(a...; b...)
    return Dict{String, Any}("ReservedConcurrentExecutions" => 250)
end

get_function_configuration_1_patch = @patch function get_function_configuration(a...; b...)
    return Dict{String, Any}("FunctionName" => "my-function", "Version" => "\$LATEST", "Environment" => Dict{String, Any}("Variables" => Dict{String, Any}("BUCKET" => "my-bucket-1xpuxmplzrlbh", "PREFIX" => "inbound")), "LastModified" => "2020-04-10T19:06:32.563+0000", "MemorySize" => 256, "TracingConfig" => Dict{String, Any}("Mode" => "Active"), "CodeSize" => 5797206, "State" => "Active", "Runtime" => "nodejs12.x", "Timeout" => 15, "CodeSha256" => "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=", "LastUpdateStatus" => "Successful", "KMSKeyArn" => "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966", "Role" => "arn:aws:iam::123456789012:role/lambda-role", "Handler" => "index.handler", "Description" => "Process image objects from Amazon S3.", "RevisionId" => "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function")
end

get_function_event_invoke_config_1_patch = @patch function get_function_event_invoke_config(a...; b...)
    return Dict{String, Any}("DestinationConfig" => Dict{String, Any}("OnFailure" => Dict{String, Any}("Destination" => "arn:aws:sqs:us-east-2:123456789012:failed-invocations"), "OnSuccess" => Dict{String, Any}()), "LastModified" => "\${timestamp}", "MaximumRetryAttempts" => 0, "MaximumEventAgeInSeconds" => 3600, "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE")
end

get_layer_version_1_patch = @patch function get_layer_version(a...; b...)
    return Dict{String, Any}("Description" => "My Python layer", "LayerVersionArn" => "arn:aws:lambda:us-east-2:123456789012:layer:my-layer:1", "Content" => Dict{String, Any}("CodeSha256" => "tv9jJO+rPbXUUXuRKi7CwHzKtLDkDRJLB3cC3Z/ouXo=", "CodeSize" => 169, "Location" => "https://awslambda-us-east-2-layers.s3.us-east-2.amazonaws.com/snapshots/123456789012/my-layer-4aaa2fbb-ff77-4b0a-ad92-5b78a716a96a?versionId=27iWyA73cCAYqyH..."), "CompatibleRuntimes" => Any["python3.6", "python3.7"], "CreatedDate" => "2018-11-14T23:03:52.894+0000", "LayerArn" => "arn:aws:lambda:us-east-2:123456789012:layer:my-layer", "LicenseInfo" => "MIT", "Version" => 1)
end

get_layer_version_by_arn_1_patch = @patch function get_layer_version_by_arn(a...; b...)
    return Dict{String, Any}("Description" => "Dependencies for the blank-python sample app.", "LayerVersionArn" => "arn:aws:lambda:us-east-2:123456789012:layer:blank-python-lib:3", "Content" => Dict{String, Any}("CodeSha256" => "6x+xmpl/M3BnQUk7gS9sGmfeFsR/npojXoA3fZUv4eU=", "CodeSize" => 9529009, "Location" => "https://awslambda-us-east-2-layers.s3.us-east-2.amazonaws.com/snapshots/123456789012/blank-python-lib-e5212378-xmpl-44ee-8398-9d8ec5113949?versionId=WbZnvf..."), "CompatibleRuntimes" => Any["python3.8"], "CreatedDate" => "2020-03-31T00:35:18.949+0000", "LayerArn" => "arn:aws:lambda:us-east-2:123456789012:layer:blank-python-lib", "Version" => 3)
end

get_policy_1_patch = @patch function get_policy(a...; b...)
    return Dict{String, Any}("RevisionId" => "4843f2f6-7c59-4fda-b484-afd0bc0e22b8", "Policy" => "{\"Version\":\"2012-10-17\",\"Id\":\"default\",\"Statement\":[{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:root\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function:1\"}]}")
end

get_provisioned_concurrency_config_1_patch = @patch function get_provisioned_concurrency_config(a...; b...)
    return Dict{String, Any}("LastModified" => "2019-12-31T20:28:49+0000", "RequestedProvisionedConcurrentExecutions" => 100, "AllocatedProvisionedConcurrentExecutions" => 100, "Status" => "READY", "AvailableProvisionedConcurrentExecutions" => 100)
end

get_provisioned_concurrency_config_2_patch = @patch function get_provisioned_concurrency_config(a...; b...)
    return Dict{String, Any}("LastModified" => "2019-12-31T20:28:49+0000", "RequestedProvisionedConcurrentExecutions" => 100, "AllocatedProvisionedConcurrentExecutions" => 100, "Status" => "READY", "AvailableProvisionedConcurrentExecutions" => 100)
end

invoke_1_patch = @patch function invoke(a...; b...)
    return Dict{String, Any}("StatusCode" => 200, "Payload" => "200 SUCCESS")
end

invoke_2_patch = @patch function invoke(a...; b...)
    return Dict{String, Any}("StatusCode" => 202, "Payload" => "")
end

invoke_async_1_patch = @patch function invoke_async(a...; b...)
    return Dict{String, Any}("Status" => 202)
end

list_aliases_1_patch = @patch function list_aliases(a...; b...)
    return Dict{String, Any}("Aliases" => Any[Dict{String, Any}("FunctionVersion" => "2", "Description" => "Production environment BLUE.", "RevisionId" => "a410117f-xmpl-494e-8035-7e204bb7933b", "AliasArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function:BETA", "RoutingConfig" => Dict{String, Any}("AdditionalVersionWeights" => Dict{String, Any}("1" => 0.7)), "Name" => "BLUE"), Dict{String, Any}("FunctionVersion" => "1", "Description" => "Production environment GREEN.", "RevisionId" => "21d40116-xmpl-40ba-9360-3ea284da1bb5", "AliasArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function:LIVE", "Name" => "GREEN")])
end

list_event_source_mappings_1_patch = @patch function list_event_source_mappings(a...; b...)
    return Dict{String, Any}("EventSourceMappings" => Any[Dict{String, Any}("StateTransitionReason" => "USER_INITIATED", "LastModified" => 1.569284520333e9, "UUID" => "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE", "BatchSize" => 5, "EventSourceArn" => "arn:aws:sqs:us-west-2:123456789012:mySQSqueue", "State" => "Enabled", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function")])
end

list_function_event_invoke_configs_1_patch = @patch function list_function_event_invoke_configs(a...; b...)
    return Dict{String, Any}("FunctionEventInvokeConfigs" => Any[Dict{String, Any}("MaximumRetryAttempts" => 2, "LastModified" => 1.577824406719e9, "MaximumEventAgeInSeconds" => 1800, "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function:GREEN"), Dict{String, Any}("MaximumRetryAttempts" => 0, "LastModified" => 1.577824396653e9, "MaximumEventAgeInSeconds" => 3600, "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE")])
end

list_functions_1_patch = @patch function list_functions(a...; b...)
    return Dict{String, Any}("NextMarker" => "", "Functions" => Any[Dict{String, Any}("FunctionName" => "helloworld", "Version" => "\$LATEST", "LastModified" => "2019-09-23T18:32:33.857+0000", "MemorySize" => 128, "TracingConfig" => Dict{String, Any}("Mode" => "PassThrough"), "CodeSize" => 294, "Runtime" => "nodejs10.x", "Timeout" => 3, "CodeSha256" => "dBG9m8SGdmlEjw/JYXlhhvCrAv5TxvXsbL/RMr0fT/I=", "Role" => "arn:aws:iam::123456789012:role/service-role/MyTestFunction-role-zgur6bf4", "Handler" => "helloworld.handler", "Description" => "", "RevisionId" => "1718e831-badf-4253-9518-d0644210af7b", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:helloworld"), Dict{String, Any}("FunctionName" => "my-function", "Version" => "\$LATEST", "LastModified" => "2019-10-01T16:47:28.490+0000", "MemorySize" => 256, "TracingConfig" => Dict{String, Any}("Mode" => "PassThrough"), "CodeSize" => 266, "VpcConfig" => Dict{String, Any}("SecurityGroupIds" => Any[], "SubnetIds" => Any[], "VpcId" => ""), "Runtime" => "nodejs10.x", "Timeout" => 3, "CodeSha256" => "sU0cJ2/hOZevwV/lTxCuQqK3gDZP3i8gUoqUUVRmY6E=", "Role" => "arn:aws:iam::123456789012:role/service-role/helloWorldPython-role-uy3l9qyq", "Handler" => "index.handler", "Description" => "", "RevisionId" => "93017fc9-59cb-41dc-901b-4845ce4bf668", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function")])
end

list_layer_versions_1_patch = @patch function list_layer_versions(a...; b...)
    return Dict{String, Any}("LayerVersions" => Any[Dict{String, Any}("Description" => "Dependencies for the blank-java sample app.", "LayerVersionArn" => "arn:aws:lambda:us-east-2:123456789012:layer:blank-java-lib:7", "CompatibleRuntimes" => Any["java8"], "CreatedDate" => "2020-03-18T23:38:42.284+0000", "Version" => 7), Dict{String, Any}("Description" => "Dependencies for the blank-java sample app.", "LayerVersionArn" => "arn:aws:lambda:us-east-2:123456789012:layer:blank-java-lib:6", "CompatibleRuntimes" => Any["java8"], "CreatedDate" => "2020-03-17T07:24:21.960+0000", "Version" => 6)])
end

list_layers_1_patch = @patch function list_layers(a...; b...)
    return Dict{String, Any}("Layers" => Any[Dict{String, Any}("LatestMatchingVersion" => Dict{String, Any}("Description" => "My layer", "LayerVersionArn" => "arn:aws:lambda:us-east-2:123456789012:layer:my-layer:2", "CompatibleRuntimes" => Any["python3.6", "python3.7"], "CreatedDate" => "2018-11-15T00:37:46.592+0000", "Version" => 2), "LayerArn" => "arn:aws:lambda:us-east-2:123456789012:layer:my-layer", "LayerName" => "my-layer")])
end

list_provisioned_concurrency_configs_1_patch = @patch function list_provisioned_concurrency_configs(a...; b...)
    return Dict{String, Any}("ProvisionedConcurrencyConfigs" => Any[Dict{String, Any}("LastModified" => "2019-12-31T20:29:00+0000", "RequestedProvisionedConcurrentExecutions" => 100, "AllocatedProvisionedConcurrentExecutions" => 100, "Status" => "READY", "AvailableProvisionedConcurrentExecutions" => 100, "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function:GREEN"), Dict{String, Any}("LastModified" => "2019-12-31T20:28:49+0000", "RequestedProvisionedConcurrentExecutions" => 100, "AllocatedProvisionedConcurrentExecutions" => 100, "Status" => "READY", "AvailableProvisionedConcurrentExecutions" => 100, "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE")])
end

list_tags_1_patch = @patch function list_tags(a...; b...)
    return Dict{String, Any}("Tags" => Dict{String, Any}("Category" => "Web Tools", "Department" => "Sales"))
end

list_versions_by_function_1_patch = @patch function list_versions_by_function(a...; b...)
    return Dict{String, Any}("Versions" => Any[Dict{String, Any}("FunctionName" => "my-function", "Version" => "\$LATEST", "Environment" => Dict{String, Any}("Variables" => Dict{String, Any}("BUCKET" => "my-bucket-1xpuxmplzrlbh", "PREFIX" => "inbound")), "LastModified" => "2020-04-10T19:06:32.563+0000", "MemorySize" => 256, "TracingConfig" => Dict{String, Any}("Mode" => "Active"), "CodeSize" => 5797206, "Runtime" => "nodejs12.x", "Timeout" => 15, "CodeSha256" => "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=", "KMSKeyArn" => "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966", "Role" => "arn:aws:iam::123456789012:role/lambda-role", "Handler" => "index.handler", "Description" => "Process image objects from Amazon S3.", "RevisionId" => "850ca006-2d98-4ff4-86db-8766e9d32fe9", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function"), Dict{String, Any}("FunctionName" => "my-function", "Version" => "1", "Environment" => Dict{String, Any}("Variables" => Dict{String, Any}("BUCKET" => "my-bucket-1xpuxmplzrlbh", "PREFIX" => "inbound")), "LastModified" => "2020-04-10T19:06:32.563+0000", "MemorySize" => 256, "TracingConfig" => Dict{String, Any}("Mode" => "Active"), "CodeSize" => 5797206, "Runtime" => "nodejs12.x", "Timeout" => 5, "CodeSha256" => "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=", "KMSKeyArn" => "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966", "Role" => "arn:aws:iam::123456789012:role/lambda-role", "Handler" => "index.handler", "Description" => "Process image objects from Amazon S3.", "RevisionId" => "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function")])
end

publish_layer_version_1_patch = @patch function publish_layer_version(a...; b...)
    return Dict{String, Any}("Description" => "My Python layer", "LayerVersionArn" => "arn:aws:lambda:us-west-2:123456789012:layer:my-layer:1", "Content" => Dict{String, Any}("CodeSha256" => "tv9jJO+rPbXUUXuRKi7CwHzKtLDkDRJLB3cC3Z/ouXo=", "CodeSize" => 169, "Location" => "https://awslambda-us-west-2-layers.s3.us-west-2.amazonaws.com/snapshots/123456789012/my-layer-4aaa2fbb-ff77-4b0a-ad92-5b78a716a96a?versionId=27iWyA73cCAYqyH..."), "CompatibleRuntimes" => Any["python3.6", "python3.7"], "CreatedDate" => "2018-11-14T23:03:52.894+0000", "LayerArn" => "arn:aws:lambda:us-west-2:123456789012:layer:my-layer", "LicenseInfo" => "MIT", "Version" => 1)
end

publish_version_1_patch = @patch function publish_version(a...; b...)
    return Dict{String, Any}("FunctionName" => "my-function", "Version" => "1", "Environment" => Dict{String, Any}("Variables" => Dict{String, Any}("BUCKET" => "my-bucket-1xpuxmplzrlbh", "PREFIX" => "inbound")), "LastModified" => "2020-04-10T19:06:32.563+0000", "MemorySize" => 256, "TracingConfig" => Dict{String, Any}("Mode" => "Active"), "CodeSize" => 5797206, "State" => "Active", "Runtime" => "nodejs12.x", "Timeout" => 5, "CodeSha256" => "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=", "LastUpdateStatus" => "Successful", "KMSKeyArn" => "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966", "Role" => "arn:aws:iam::123456789012:role/lambda-role", "Handler" => "index.handler", "Description" => "Process image objects from Amazon S3.", "RevisionId" => "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function")
end

put_function_concurrency_1_patch = @patch function put_function_concurrency(a...; b...)
    return Dict{String, Any}("ReservedConcurrentExecutions" => 100)
end

put_function_event_invoke_config_1_patch = @patch function put_function_event_invoke_config(a...; b...)
    return Dict{String, Any}("DestinationConfig" => Dict{String, Any}("OnFailure" => Dict{String, Any}(), "OnSuccess" => Dict{String, Any}()), "LastModified" => "\${timestamp}", "MaximumRetryAttempts" => 0, "MaximumEventAgeInSeconds" => 3600, "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function:\$LATEST")
end

put_provisioned_concurrency_config_1_patch = @patch function put_provisioned_concurrency_config(a...; b...)
    return Dict{String, Any}("LastModified" => "2019-11-21T19:32:12+0000", "RequestedProvisionedConcurrentExecutions" => 100, "AllocatedProvisionedConcurrentExecutions" => 0, "Status" => "IN_PROGRESS")
end

update_alias_1_patch = @patch function update_alias(a...; b...)
    return Dict{String, Any}("FunctionVersion" => "2", "Description" => "Production environment BLUE.", "RevisionId" => "594f41fb-xmpl-4c20-95c7-6ca5f2a92c93", "AliasArn" => "arn:aws:lambda:us-west-2:123456789012:function:my-function:BLUE", "RoutingConfig" => Dict{String, Any}("AdditionalVersionWeights" => Dict{String, Any}("1" => 0.7)), "Name" => "BLUE")
end

update_event_source_mapping_1_patch = @patch function update_event_source_mapping(a...; b...)
    return Dict{String, Any}("StateTransitionReason" => "", "LastModified" => "2016-11-21T19:49:20.006+0000", "UUID" => "1234xCy789012", "BatchSize" => 123, "EventSourceArn" => "arn:aws:s3:::examplebucket/*", "LastProcessingResult" => "", "State" => "", "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction")
end

update_function_code_1_patch = @patch function update_function_code(a...; b...)
    return Dict{String, Any}("FunctionName" => "my-function", "Version" => "\$LATEST", "LastModified" => "2019-08-14T22:26:11.234+0000", "MemorySize" => 128, "TracingConfig" => Dict{String, Any}("Mode" => "PassThrough"), "CodeSize" => 308, "Runtime" => "nodejs12.x", "Timeout" => 3, "CodeSha256" => "PFn4S+er27qk+UuZSTKEQfNKG/XNn7QJs90mJgq6oH8=", "Role" => "arn:aws:iam::123456789012:role/lambda-role", "Handler" => "index.handler", "Description" => "", "RevisionId" => "873282ed-xmpl-4dc8-a069-d0c647e470c6", "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function")
end

update_function_configuration_1_patch = @patch function update_function_configuration(a...; b...)
    return Dict{String, Any}("FunctionName" => "my-function", "Version" => "\$LATEST", "LastModified" => "2019-08-14T22:26:11.234+0000", "MemorySize" => 256, "TracingConfig" => Dict{String, Any}("Mode" => "PassThrough"), "CodeSize" => 308, "Runtime" => "nodejs12.x", "Timeout" => 3, "CodeSha256" => "PFn4S+er27qk+UuZSTKEQfNKG/XNn7QJs90mJgq6oH8=", "Role" => "arn:aws:iam::123456789012:role/lambda-role", "Handler" => "index.handler", "Description" => "", "RevisionId" => "873282ed-xmpl-4dc8-a069-d0c647e470c6", "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function")
end

update_function_event_invoke_config_1_patch = @patch function update_function_event_invoke_config(a...; b...)
    return Dict{String, Any}("DestinationConfig" => Dict{String, Any}("OnFailure" => Dict{String, Any}("Destination" => "arn:aws:sqs:us-east-2:123456789012:destination"), "OnSuccess" => Dict{String, Any}()), "LastModified" => 1.573687896493e9, "MaximumRetryAttempts" => 0, "MaximumEventAgeInSeconds" => 3600, "FunctionArn" => "arn:aws:lambda:us-east-2:123456789012:function:my-function:\$LATEST")
end

