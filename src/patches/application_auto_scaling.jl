using Mocking

delete_scaling_policy_1_patch = @patch function delete_scaling_policy(a...; b...)
    return Dict{String, Any}()
end

deregister_scalable_target_1_patch = @patch function deregister_scalable_target(a...; b...)
    return Dict{String, Any}()
end

describe_scalable_targets_1_patch = @patch function describe_scalable_targets(a...; b...)
    return Dict{String, Any}("ScalableTargets" => Any[Dict{String, Any}("SuspendedState" => Dict{String, Any}("DynamicScalingInSuspended" => false, "DynamicScalingOutSuspended" => false, "ScheduledScalingSuspended" => false), "CreationTime" => "2019-05-06T11:21:46.199Z", "MinCapacity" => 1, "MaxCapacity" => 10, "ResourceId" => "service/default/web-app", "RoleARN" => "arn:aws:iam::012345678910:role/aws-service-role/ecs.application-autoscaling.amazonaws.com/AWSServiceRoleForApplicationAutoScaling_ECSService", "ScalableDimension" => "ecs:service:DesiredCount", "ServiceNamespace" => "ecs")])
end

describe_scaling_activities_1_patch = @patch function describe_scaling_activities(a...; b...)
    return Dict{String, Any}("ScalingActivities" => Any[Dict{String, Any}("StartTime" => "2019-05-06T16:03:58.171Z", "Description" => "Setting desired count to 1.", "EndTime" => "2019-05-06T16:04:32.111Z", "ActivityId" => "e6c5f7d1-dbbb-4a3f-89b2-51f33e766399", "StatusCode" => "Successful", "ResourceId" => "service/default/web-app", "ServiceNamespace" => "ecs", "ScalableDimension" => "ecs:service:DesiredCount", "Cause" => "monitor alarm web-app-cpu-lt-25 in state ALARM triggered policy web-app-cpu-lt-25", "StatusMessage" => "Successfully set desired count to 1. Change successfully fulfilled by ecs.")])
end

describe_scaling_policies_1_patch = @patch function describe_scaling_policies(a...; b...)
    return Dict{String, Any}("NextToken" => "", "ScalingPolicies" => Any[Dict{String, Any}("PolicyName" => "web-app-cpu-gt-75", "PolicyType" => "StepScaling", "CreationTime" => "2019-05-06T12:11:39.230Z", "Alarms" => Any[Dict{String, Any}("AlarmName" => "web-app-cpu-gt-75", "AlarmARN" => "arn:aws:cloudwatch:us-west-2:012345678910:alarm:web-app-cpu-gt-75")], "ResourceId" => "service/default/web-app", "PolicyARN" => "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/web-app-cpu-gt-75", "ServiceNamespace" => "ecs", "ScalableDimension" => "ecs:service:DesiredCount", "StepScalingPolicyConfiguration" => Dict{String, Any}("StepAdjustments" => Any[Dict{String, Any}("ScalingAdjustment" => 200, "MetricIntervalLowerBound" => 0)], "Cooldown" => 60, "AdjustmentType" => "PercentChangeInCapacity"))])
end

put_scaling_policy_1_patch = @patch function put_scaling_policy(a...; b...)
    return Dict{String, Any}("Alarms" => Any[Dict{String, Any}("AlarmName" => "TargetTracking-service/default/web-app-AlarmHigh-d4f0770c-b46e-434a-a60f-3b36d653feca", "AlarmARN" => "arn:aws:cloudwatch:us-west-2:012345678910:alarm:TargetTracking-service/default/web-app-AlarmHigh-d4f0770c-b46e-434a-a60f-3b36d653feca"), Dict{String, Any}("AlarmName" => "TargetTracking-service/default/web-app-AlarmLow-1b437334-d19b-4a63-a812-6c67aaf2910d", "AlarmARN" => "arn:aws:cloudwatch:us-west-2:012345678910:alarm:TargetTracking-service/default/web-app-AlarmLow-1b437334-d19b-4a63-a812-6c67aaf2910d")], "PolicyARN" => "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/cpu75-target-tracking-scaling-policy")
end

