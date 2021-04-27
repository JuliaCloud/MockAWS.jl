using Mocking

cancel_instance_refresh_1_patch = @patch function cancel_instance_refresh(a...; b...)
    return Dict{String, Any}("InstanceRefreshId" => "08b91cf7-8fa6-48af-b6a6-d227f40f1b9b")
end

describe_account_limits_1_patch = @patch function describe_account_limits(a...; b...)
    return Dict{String, Any}("MaxNumberOfLaunchConfigurations" => 100, "MaxNumberOfAutoScalingGroups" => 20, "NumberOfAutoScalingGroups" => 3, "NumberOfLaunchConfigurations" => 5)
end

describe_adjustment_types_1_patch = @patch function describe_adjustment_types(a...; b...)
    return Dict{String, Any}("AdjustmentTypes" => Any[Dict{String, Any}("AdjustmentType" => "ChangeInCapacity"), Dict{String, Any}("AdjustmentType" => "ExactCapcity"), Dict{String, Any}("AdjustmentType" => "PercentChangeInCapacity")])
end

describe_auto_scaling_groups_1_patch = @patch function describe_auto_scaling_groups(a...; b...)
    return Dict{String, Any}("AutoScalingGroups" => Any[Dict{String, Any}("DefaultCooldown" => 300, "EnabledMetrics" => Any[], "MaxSize" => 1, "AvailabilityZones" => Any["us-west-2c"], "CreatedTime" => "2013-08-19T20:53:25.584Z", "DesiredCapacity" => 1, "Tags" => Any[], "AutoScalingGroupName" => "my-auto-scaling-group", "SuspendedProcesses" => Any[], "HealthCheckType" => "EC2", "LaunchConfigurationName" => "my-launch-config", "LoadBalancerNames" => Any[], "AutoScalingGroupARN" => "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:930d940e-891e-4781-a11a-7b0acd480f03:autoScalingGroupName/my-auto-scaling-group", "NewInstancesProtectedFromScaleIn" => false, "HealthCheckGracePeriod" => 300, "TerminationPolicies" => Any["Default"], "VPCZoneIdentifier" => "subnet-12345678", "Instances" => Any[Dict{String, Any}("LifecycleState" => "InService", "AvailabilityZone" => "us-west-2c", "HealthStatus" => "Healthy", "InstanceId" => "i-4ba0837f", "ProtectedFromScaleIn" => false, "LaunchConfigurationName" => "my-launch-config")], "MinSize" => 0)])
end

describe_auto_scaling_instances_1_patch = @patch function describe_auto_scaling_instances(a...; b...)
    return Dict{String, Any}("AutoScalingInstances" => Any[Dict{String, Any}("LifecycleState" => "InService", "AvailabilityZone" => "us-west-2c", "HealthStatus" => "HEALTHY", "InstanceId" => "i-4ba0837f", "AutoScalingGroupName" => "my-auto-scaling-group", "ProtectedFromScaleIn" => false, "LaunchConfigurationName" => "my-launch-config")])
end

describe_auto_scaling_notification_types_1_patch = @patch function describe_auto_scaling_notification_types(a...; b...)
    return Dict{String, Any}("AutoScalingNotificationTypes" => Any["autoscaling:EC2_INSTANCE_LAUNCH", "autoscaling:EC2_INSTANCE_LAUNCH_ERROR", "autoscaling:EC2_INSTANCE_TERMINATE", "autoscaling:EC2_INSTANCE_TERMINATE_ERROR", "autoscaling:TEST_NOTIFICATION"])
end

describe_instance_refreshes_1_patch = @patch function describe_instance_refreshes(a...; b...)
    return Dict{String, Any}("InstanceRefreshes" => Any[Dict{String, Any}("StartTime" => "2020-06-02T18:11:27Z", "InstanceRefreshId" => "08b91cf7-8fa6-48af-b6a6-d227f40f1b9b", "Status" => "InProgress", "AutoScalingGroupName" => "my-auto-scaling-group", "InstancesToUpdate" => 5, "PercentageComplete" => 0), Dict{String, Any}("StartTime" => "2020-06-02T16:43:19Z", "InstanceRefreshId" => "dd7728d0-5bc4-4575-96a3-1b2c52bf8bb1", "EndTime" => "2020-06-02T16:53:37Z", "Status" => "Successful", "AutoScalingGroupName" => "my-auto-scaling-group", "InstancesToUpdate" => 0, "PercentageComplete" => 100)])
end

describe_launch_configurations_1_patch = @patch function describe_launch_configurations(a...; b...)
    return Dict{String, Any}("LaunchConfigurations" => Any[Dict{String, Any}("BlockDeviceMappings" => Any[], "InstanceMonitoring" => Dict{String, Any}("Enabled" => true), "LaunchConfigurationName" => "my-launch-config", "InstanceType" => "t1.micro", "AssociatePublicIpAddress" => true, "SecurityGroups" => Any["sg-67ef0308"], "ImageId" => "ami-043a5034", "EbsOptimized" => false, "LaunchConfigurationARN" => "arn:aws:autoscaling:us-west-2:123456789012:launchConfiguration:98d3b196-4cf9-4e88-8ca1-8547c24ced8b:launchConfigurationName/my-launch-config", "CreatedTime" => "2014-05-07T17:39:28.599Z")])
end

describe_lifecycle_hook_types_1_patch = @patch function describe_lifecycle_hook_types(a...; b...)
    return Dict{String, Any}("LifecycleHookTypes" => Any["autoscaling:EC2_INSTANCE_LAUNCHING", "autoscaling:EC2_INSTANCE_TERMINATING"])
end

describe_lifecycle_hooks_1_patch = @patch function describe_lifecycle_hooks(a...; b...)
    return Dict{String, Any}("LifecycleHooks" => Any[Dict{String, Any}("LifecycleHookName" => "my-lifecycle-hook", "NotificationTargetARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic", "DefaultResult" => "ABANDON", "GlobalTimeout" => 172800, "HeartbeatTimeout" => 3600, "AutoScalingGroupName" => "my-auto-scaling-group", "RoleARN" => "arn:aws:iam::123456789012:role/my-auto-scaling-role", "LifecycleTransition" => "autoscaling:EC2_INSTANCE_LAUNCHING")])
end

describe_load_balancer_target_groups_1_patch = @patch function describe_load_balancer_target_groups(a...; b...)
    return Dict{String, Any}("LoadBalancerTargetGroups" => Any[Dict{String, Any}("LoadBalancerTargetGroupARN" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", "State" => "Added")])
end

describe_load_balancers_1_patch = @patch function describe_load_balancers(a...; b...)
    return Dict{String, Any}("LoadBalancers" => Any[Dict{String, Any}("LoadBalancerName" => "my-load-balancer", "State" => "Added")])
end

describe_metric_collection_types_1_patch = @patch function describe_metric_collection_types(a...; b...)
    return Dict{String, Any}("Granularities" => Any[Dict{String, Any}("Granularity" => "1Minute")], "Metrics" => Any[Dict{String, Any}("Metric" => "GroupMinSize"), Dict{String, Any}("Metric" => "GroupMaxSize"), Dict{String, Any}("Metric" => "GroupDesiredCapacity"), Dict{String, Any}("Metric" => "GroupInServiceInstances"), Dict{String, Any}("Metric" => "GroupPendingInstances"), Dict{String, Any}("Metric" => "GroupTerminatingInstances"), Dict{String, Any}("Metric" => "GroupStandbyInstances"), Dict{String, Any}("Metric" => "GroupTotalInstances")])
end

describe_notification_configurations_1_patch = @patch function describe_notification_configurations(a...; b...)
    return Dict{String, Any}("NotificationConfigurations" => Any[Dict{String, Any}("TopicARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic-2", "NotificationType" => "autoscaling:TEST_NOTIFICATION", "AutoScalingGroupName" => "my-auto-scaling-group"), Dict{String, Any}("TopicARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic", "NotificationType" => "autoscaling:TEST_NOTIFICATION", "AutoScalingGroupName" => "my-auto-scaling-group")])
end

describe_policies_1_patch = @patch function describe_policies(a...; b...)
    return Dict{String, Any}("ScalingPolicies" => Any[Dict{String, Any}("ScalingAdjustment" => -1, "PolicyName" => "ScaleIn", "Alarms" => Any[], "AutoScalingGroupName" => "my-auto-scaling-group", "PolicyARN" => "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2233f3d7-6290-403b-b632-93c553560106:autoScalingGroupName/my-auto-scaling-group:policyName/ScaleIn", "AdjustmentType" => "ChangeInCapacity"), Dict{String, Any}("MinAdjustmentStep" => 2, "PolicyName" => "ScalePercentChange", "ScalingAdjustment" => 25, "Cooldown" => 60, "Alarms" => Any[], "AutoScalingGroupName" => "my-auto-scaling-group", "PolicyARN" => "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2b435159-cf77-4e89-8c0e-d63b497baad7:autoScalingGroupName/my-auto-scaling-group:policyName/ScalePercentChange", "AdjustmentType" => "PercentChangeInCapacity")])
end

describe_scaling_activities_1_patch = @patch function describe_scaling_activities(a...; b...)
    return Dict{String, Any}("Activities" => Any[Dict{String, Any}("StartTime" => "2013-08-19T20:53:29.930Z", "Description" => "Launching a new EC2 instance: i-4ba0837f", "EndTime" => "2013-08-19T20:54:02Z", "Progress" => 100, "ActivityId" => "f9f2d65b-f1f2-43e7-b46d-d86756459699", "StatusCode" => "Successful", "AutoScalingGroupName" => "my-auto-scaling-group", "Cause" => "At 2013-08-19T20:53:25Z a user request created an AutoScalingGroup changing the desired capacity from 0 to 1.  At 2013-08-19T20:53:29Z an instance was started in response to a difference between desired and actual capacity, increasing the capacity from 0 to 1.", "Details" => "details")])
end

describe_scaling_process_types_1_patch = @patch function describe_scaling_process_types(a...; b...)
    return Dict{String, Any}("Processes" => Any[Dict{String, Any}("ProcessName" => "AZRebalance"), Dict{String, Any}("ProcessName" => "AddToLoadBalancer"), Dict{String, Any}("ProcessName" => "AlarmNotification"), Dict{String, Any}("ProcessName" => "HealthCheck"), Dict{String, Any}("ProcessName" => "Launch"), Dict{String, Any}("ProcessName" => "ReplaceUnhealthy"), Dict{String, Any}("ProcessName" => "ScheduledActions"), Dict{String, Any}("ProcessName" => "Terminate")])
end

describe_scheduled_actions_1_patch = @patch function describe_scheduled_actions(a...; b...)
    return Dict{String, Any}("ScheduledUpdateGroupActions" => Any[Dict{String, Any}("ScheduledActionName" => "my-scheduled-action", "ScheduledActionARN" => "arn:aws:autoscaling:us-west-2:123456789012:scheduledUpdateGroupAction:8e86b655-b2e6-4410-8f29-b4f094d6871c:autoScalingGroupName/my-auto-scaling-group:scheduledActionName/my-scheduled-action", "StartTime" => "2016-12-01T00:30:00Z", "DesiredCapacity" => 4, "Recurrence" => "30 0 1 12 0", "AutoScalingGroupName" => "my-auto-scaling-group", "MaxSize" => 6, "Time" => "2016-12-01T00:30:00Z", "MinSize" => 2)])
end

describe_tags_1_patch = @patch function describe_tags(a...; b...)
    return Dict{String, Any}("Tags" => Any[Dict{String, Any}("Value" => "Research", "ResourceType" => "auto-scaling-group", "ResourceId" => "my-auto-scaling-group", "Key" => "Dept", "PropagateAtLaunch" => true), Dict{String, Any}("Value" => "WebServer", "ResourceType" => "auto-scaling-group", "ResourceId" => "my-auto-scaling-group", "Key" => "Role", "PropagateAtLaunch" => true)])
end

describe_termination_policy_types_1_patch = @patch function describe_termination_policy_types(a...; b...)
    return Dict{String, Any}("TerminationPolicyTypes" => Any["ClosestToNextInstanceHour", "Default", "NewestInstance", "OldestInstance", "OldestLaunchConfiguration"])
end

detach_instances_1_patch = @patch function detach_instances(a...; b...)
    return Dict{String, Any}("Activities" => Any[Dict{String, Any}("StartTime" => "2015-04-12T15:02:16.179Z", "Description" => "Detaching EC2 instance: i-93633f9b", "Progress" => 50, "ActivityId" => "5091cb52-547a-47ce-a236-c9ccbc2cb2c9", "StatusCode" => "InProgress", "AutoScalingGroupName" => "my-auto-scaling-group", "Cause" => "At 2015-04-12T15:02:16Z instance i-93633f9b was detached in response to a user request, shrinking the capacity from 2 to 1.", "Details" => "details")])
end

enter_standby_1_patch = @patch function enter_standby(a...; b...)
    return Dict{String, Any}("Activities" => Any[Dict{String, Any}("StartTime" => "2015-04-12T15:10:23.640Z", "Description" => "Moving EC2 instance to Standby: i-93633f9b", "Progress" => 50, "ActivityId" => "ffa056b4-6ed3-41ba-ae7c-249dfae6eba1", "StatusCode" => "InProgress", "AutoScalingGroupName" => "my-auto-scaling-group", "Cause" => "At 2015-04-12T15:10:23Z instance i-93633f9b was moved to standby in response to a user request, shrinking the capacity from 2 to 1.", "Details" => "details")])
end

exit_standby_1_patch = @patch function exit_standby(a...; b...)
    return Dict{String, Any}("Activities" => Any[Dict{String, Any}("StartTime" => "2015-04-12T15:14:29.886Z", "Description" => "Moving EC2 instance out of Standby: i-93633f9b", "Progress" => 30, "ActivityId" => "142928e1-a2dc-453a-9b24-b85ad6735928", "StatusCode" => "PreInService", "AutoScalingGroupName" => "my-auto-scaling-group", "Cause" => "At 2015-04-12T15:14:29Z instance i-93633f9b was moved out of standby in response to a user request, increasing the capacity from 1 to 2.", "Details" => "details")])
end

put_scaling_policy_1_patch = @patch function put_scaling_policy(a...; b...)
    return Dict{String, Any}("Alarms" => Any[Dict{String, Any}("AlarmName" => "TargetTracking-my-asg-AlarmHigh-fc0e4183-23ac-497e-9992-691c9980c38e", "AlarmARN" => "arn:aws:cloudwatch:us-west-2:123456789012:alarm:TargetTracking-my-asg-AlarmHigh-fc0e4183-23ac-497e-9992-691c9980c38e"), Dict{String, Any}("AlarmName" => "TargetTracking-my-asg-AlarmLow-61a39305-ed0c-47af-bd9e-471a352ee1a2", "AlarmARN" => "arn:aws:cloudwatch:us-west-2:123456789012:alarm:TargetTracking-my-asg-AlarmLow-61a39305-ed0c-47af-bd9e-471a352ee1a2")], "PolicyARN" => "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:228f02c2-c665-4bfd-aaac-8b04080bea3c:autoScalingGroupName/my-auto-scaling-group:policyName/alb1000-target-tracking-scaling-policy")
end

start_instance_refresh_1_patch = @patch function start_instance_refresh(a...; b...)
    return Dict{String, Any}("InstanceRefreshId" => "08b91cf7-8fa6-48af-b6a6-d227f40f1b9b")
end

