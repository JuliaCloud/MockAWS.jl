using Mocking

create_listener_1_patch = @patch function create_listener(a...; b...)
    return Dict{String, Any}("Listeners" => Any[Dict{String, Any}("ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", "DefaultActions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067")], "Protocol" => "HTTP", "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", "Port" => 80)])
end

create_listener_2_patch = @patch function create_listener(a...; b...)
    return Dict{String, Any}("Listeners" => Any[Dict{String, Any}("ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", "SslPolicy" => "ELBSecurityPolicy-2015-05", "Certificates" => Any[Dict{String, Any}("CertificateArn" => "arn:aws:iam::123456789012:server-certificate/my-server-cert")], "DefaultActions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067")], "Protocol" => "HTTPS", "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", "Port" => 443)])
end

create_load_balancer_1_patch = @patch function create_load_balancer(a...; b...)
    return Dict{String, Any}("LoadBalancers" => Any[Dict{String, Any}("AvailabilityZones" => Any[Dict{String, Any}("ZoneName" => "us-west-2a", "SubnetId" => "subnet-8360a9e7"), Dict{String, Any}("ZoneName" => "us-west-2b", "SubnetId" => "subnet-b7d581c0")], "CreatedTime" => "2016-03-25T21:26:12.920Z", "SecurityGroups" => Any["sg-5943793c"], "VpcId" => "vpc-3ac0fb5f", "State" => Dict{String, Any}("Code" => "provisioning"), "Scheme" => "internet-facing", "CanonicalHostedZoneId" => "Z2P70J7EXAMPLE", "DNSName" => "my-load-balancer-424835706.us-west-2.elb.amazonaws.com", "LoadBalancerName" => "my-load-balancer", "Type" => "application", "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188")])
end

create_load_balancer_2_patch = @patch function create_load_balancer(a...; b...)
    return Dict{String, Any}("LoadBalancers" => Any[Dict{String, Any}("AvailabilityZones" => Any[Dict{String, Any}("ZoneName" => "us-west-2a", "SubnetId" => "subnet-8360a9e7"), Dict{String, Any}("ZoneName" => "us-west-2b", "SubnetId" => "subnet-b7d581c0")], "CreatedTime" => "2016-03-25T21:29:48.850Z", "SecurityGroups" => Any["sg-5943793c"], "VpcId" => "vpc-3ac0fb5f", "State" => Dict{String, Any}("Code" => "provisioning"), "Scheme" => "internal", "CanonicalHostedZoneId" => "Z2P70J7EXAMPLE", "DNSName" => "internal-my-internal-load-balancer-1529930873.us-west-2.elb.amazonaws.com", "LoadBalancerName" => "my-internal-load-balancer", "Type" => "application", "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-internal-load-balancer/5b49b8d4303115c2")])
end

create_rule_1_patch = @patch function create_rule(a...; b...)
    return Dict{String, Any}("Rules" => Any[Dict{String, Any}("Actions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067")], "Conditions" => Any[Dict{String, Any}("Values" => Any["/img/*"], "Field" => "path-pattern")], "IsDefault" => false, "Priority" => "10", "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee")])
end

create_target_group_1_patch = @patch function create_target_group(a...; b...)
    return Dict{String, Any}("TargetGroups" => Any[Dict{String, Any}("HealthCheckProtocol" => "HTTP", "UnhealthyThresholdCount" => 2, "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", "Protocol" => "HTTP", "TargetGroupName" => "my-targets", "HealthCheckPath" => "/", "HealthCheckTimeoutSeconds" => 5, "HealthyThresholdCount" => 5, "VpcId" => "vpc-3ac0fb5f", "Matcher" => Dict{String, Any}("HttpCode" => "200"), "HealthCheckPort" => "traffic-port", "Port" => 80, "HealthCheckIntervalSeconds" => 30)])
end

describe_listeners_1_patch = @patch function describe_listeners(a...; b...)
    return Dict{String, Any}("Listeners" => Any[Dict{String, Any}("ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", "DefaultActions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067")], "Protocol" => "HTTP", "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", "Port" => 80)])
end

describe_load_balancer_attributes_1_patch = @patch function describe_load_balancer_attributes(a...; b...)
    return Dict{String, Any}("Attributes" => Any[Dict{String, Any}("Value" => "false", "Key" => "access_logs.s3.enabled"), Dict{String, Any}("Value" => "60", "Key" => "idle_timeout.timeout_seconds"), Dict{String, Any}("Value" => "", "Key" => "access_logs.s3.prefix"), Dict{String, Any}("Value" => "false", "Key" => "deletion_protection.enabled"), Dict{String, Any}("Value" => "", "Key" => "access_logs.s3.bucket")])
end

describe_load_balancers_1_patch = @patch function describe_load_balancers(a...; b...)
    return Dict{String, Any}("LoadBalancers" => Any[Dict{String, Any}("AvailabilityZones" => Any[Dict{String, Any}("ZoneName" => "us-west-2a", "SubnetId" => "subnet-8360a9e7"), Dict{String, Any}("ZoneName" => "us-west-2b", "SubnetId" => "subnet-b7d581c0")], "CreatedTime" => "2016-03-25T21:26:12.920Z", "SecurityGroups" => Any["sg-5943793c"], "VpcId" => "vpc-3ac0fb5f", "State" => Dict{String, Any}("Code" => "active"), "Scheme" => "internet-facing", "CanonicalHostedZoneId" => "Z2P70J7EXAMPLE", "DNSName" => "my-load-balancer-424835706.us-west-2.elb.amazonaws.com", "LoadBalancerName" => "my-load-balancer", "Type" => "application", "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188")])
end

describe_rules_1_patch = @patch function describe_rules(a...; b...)
    return Dict{String, Any}("Rules" => Any[Dict{String, Any}("Actions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067")], "Conditions" => Any[Dict{String, Any}("Values" => Any["/img/*"], "Field" => "path-pattern")], "IsDefault" => false, "Priority" => "10", "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee")])
end

describe_sslpolicies_1_patch = @patch function describe_sslpolicies(a...; b...)
    return Dict{String, Any}("SslPolicies" => Any[Dict{String, Any}("Ciphers" => Any[Dict{String, Any}("Priority" => 1, "Name" => "ECDHE-ECDSA-AES128-GCM-SHA256"), Dict{String, Any}("Priority" => 2, "Name" => "ECDHE-RSA-AES128-GCM-SHA256"), Dict{String, Any}("Priority" => 3, "Name" => "ECDHE-ECDSA-AES128-SHA256"), Dict{String, Any}("Priority" => 4, "Name" => "ECDHE-RSA-AES128-SHA256"), Dict{String, Any}("Priority" => 5, "Name" => "ECDHE-ECDSA-AES128-SHA"), Dict{String, Any}("Priority" => 6, "Name" => "ECDHE-RSA-AES128-SHA"), Dict{String, Any}("Priority" => 7, "Name" => "DHE-RSA-AES128-SHA"), Dict{String, Any}("Priority" => 8, "Name" => "ECDHE-ECDSA-AES256-GCM-SHA384"), Dict{String, Any}("Priority" => 9, "Name" => "ECDHE-RSA-AES256-GCM-SHA384"), Dict{String, Any}("Priority" => 10, "Name" => "ECDHE-ECDSA-AES256-SHA384"), Dict{String, Any}("Priority" => 11, "Name" => "ECDHE-RSA-AES256-SHA384"), Dict{String, Any}("Priority" => 12, "Name" => "ECDHE-RSA-AES256-SHA"), Dict{String, Any}("Priority" => 13, "Name" => "ECDHE-ECDSA-AES256-SHA"), Dict{String, Any}("Priority" => 14, "Name" => "AES128-GCM-SHA256"), Dict{String, Any}("Priority" => 15, "Name" => "AES128-SHA256"), Dict{String, Any}("Priority" => 16, "Name" => "AES128-SHA"), Dict{String, Any}("Priority" => 17, "Name" => "AES256-GCM-SHA384"), Dict{String, Any}("Priority" => 18, "Name" => "AES256-SHA256"), Dict{String, Any}("Priority" => 19, "Name" => "AES256-SHA")], "SslProtocols" => Any["TLSv1", "TLSv1.1", "TLSv1.2"], "Name" => "ELBSecurityPolicy-2015-05")])
end

describe_tags_1_patch = @patch function describe_tags(a...; b...)
    return Dict{String, Any}("TagDescriptions" => Any[Dict{String, Any}("ResourceArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", "Tags" => Any[Dict{String, Any}("Value" => "lima", "Key" => "project"), Dict{String, Any}("Value" => "digital-media", "Key" => "department")])])
end

describe_target_group_attributes_1_patch = @patch function describe_target_group_attributes(a...; b...)
    return Dict{String, Any}("Attributes" => Any[Dict{String, Any}("Value" => "false", "Key" => "stickiness.enabled"), Dict{String, Any}("Value" => "300", "Key" => "deregistration_delay.timeout_seconds"), Dict{String, Any}("Value" => "lb_cookie", "Key" => "stickiness.type"), Dict{String, Any}("Value" => "86400", "Key" => "stickiness.lb_cookie.duration_seconds")])
end

describe_target_groups_1_patch = @patch function describe_target_groups(a...; b...)
    return Dict{String, Any}("TargetGroups" => Any[Dict{String, Any}("HealthCheckProtocol" => "HTTP", "UnhealthyThresholdCount" => 2, "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", "Protocol" => "HTTP", "TargetGroupName" => "my-targets", "HealthCheckPath" => "/", "HealthCheckTimeoutSeconds" => 5, "HealthyThresholdCount" => 5, "VpcId" => "vpc-3ac0fb5f", "Matcher" => Dict{String, Any}("HttpCode" => "200"), "HealthCheckPort" => "traffic-port", "Port" => 80, "LoadBalancerArns" => Any["arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"], "HealthCheckIntervalSeconds" => 30)])
end

describe_target_health_1_patch = @patch function describe_target_health(a...; b...)
    return Dict{String, Any}("TargetHealthDescriptions" => Any[Dict{String, Any}("TargetHealth" => Dict{String, Any}("Description" => "Given target group is not configured to receive traffic from ELB", "Reason" => "Target.NotInUse", "State" => "unused"), "Target" => Dict{String, Any}("Id" => "i-0f76fade", "Port" => 80)), Dict{String, Any}("TargetHealth" => Dict{String, Any}("State" => "healthy"), "HealthCheckPort" => "80", "Target" => Dict{String, Any}("Id" => "i-0f76fade", "Port" => 80))])
end

describe_target_health_2_patch = @patch function describe_target_health(a...; b...)
    return Dict{String, Any}("TargetHealthDescriptions" => Any[Dict{String, Any}("TargetHealth" => Dict{String, Any}("State" => "healthy"), "HealthCheckPort" => "80", "Target" => Dict{String, Any}("Id" => "i-0f76fade", "Port" => 80))])
end

modify_listener_1_patch = @patch function modify_listener(a...; b...)
    return Dict{String, Any}("Listeners" => Any[Dict{String, Any}("ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", "DefaultActions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f")], "Protocol" => "HTTP", "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", "Port" => 80)])
end

modify_listener_2_patch = @patch function modify_listener(a...; b...)
    return Dict{String, Any}("Listeners" => Any[Dict{String, Any}("ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65", "SslPolicy" => "ELBSecurityPolicy-2015-05", "Certificates" => Any[Dict{String, Any}("CertificateArn" => "arn:aws:iam::123456789012:server-certificate/my-new-server-cert")], "DefaultActions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067")], "Protocol" => "HTTPS", "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", "Port" => 443)])
end

modify_load_balancer_attributes_1_patch = @patch function modify_load_balancer_attributes(a...; b...)
    return Dict{String, Any}("Attributes" => Any[Dict{String, Any}("Value" => "true", "Key" => "deletion_protection.enabled"), Dict{String, Any}("Value" => "false", "Key" => "access_logs.s3.enabled"), Dict{String, Any}("Value" => "60", "Key" => "idle_timeout.timeout_seconds"), Dict{String, Any}("Value" => "", "Key" => "access_logs.s3.prefix"), Dict{String, Any}("Value" => "", "Key" => "access_logs.s3.bucket")])
end

modify_load_balancer_attributes_2_patch = @patch function modify_load_balancer_attributes(a...; b...)
    return Dict{String, Any}("Attributes" => Any[Dict{String, Any}("Value" => "30", "Key" => "idle_timeout.timeout_seconds"), Dict{String, Any}("Value" => "false", "Key" => "access_logs.s3.enabled"), Dict{String, Any}("Value" => "", "Key" => "access_logs.s3.prefix"), Dict{String, Any}("Value" => "true", "Key" => "deletion_protection.enabled"), Dict{String, Any}("Value" => "", "Key" => "access_logs.s3.bucket")])
end

modify_load_balancer_attributes_3_patch = @patch function modify_load_balancer_attributes(a...; b...)
    return Dict{String, Any}("Attributes" => Any[Dict{String, Any}("Value" => "true", "Key" => "access_logs.s3.enabled"), Dict{String, Any}("Value" => "my-load-balancer-logs", "Key" => "access_logs.s3.bucket"), Dict{String, Any}("Value" => "myapp", "Key" => "access_logs.s3.prefix"), Dict{String, Any}("Value" => "60", "Key" => "idle_timeout.timeout_seconds"), Dict{String, Any}("Value" => "false", "Key" => "deletion_protection.enabled")])
end

modify_rule_1_patch = @patch function modify_rule(a...; b...)
    return Dict{String, Any}("Rules" => Any[Dict{String, Any}("Actions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067")], "Conditions" => Any[Dict{String, Any}("Values" => Any["/images/*"], "Field" => "path-pattern")], "IsDefault" => false, "Priority" => "10", "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee")])
end

modify_target_group_1_patch = @patch function modify_target_group(a...; b...)
    return Dict{String, Any}("TargetGroups" => Any[Dict{String, Any}("HealthCheckProtocol" => "HTTPS", "UnhealthyThresholdCount" => 2, "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-https-targets/2453ed029918f21f", "Protocol" => "HTTPS", "TargetGroupName" => "my-https-targets", "HealthCheckTimeoutSeconds" => 5, "HealthyThresholdCount" => 5, "VpcId" => "vpc-3ac0fb5f", "Matcher" => Dict{String, Any}("HttpCode" => "200"), "HealthCheckPort" => "443", "Port" => 443, "LoadBalancerArns" => Any["arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"], "HealthCheckIntervalSeconds" => 30)])
end

modify_target_group_attributes_1_patch = @patch function modify_target_group_attributes(a...; b...)
    return Dict{String, Any}("Attributes" => Any[Dict{String, Any}("Value" => "false", "Key" => "stickiness.enabled"), Dict{String, Any}("Value" => "600", "Key" => "deregistration_delay.timeout_seconds"), Dict{String, Any}("Value" => "lb_cookie", "Key" => "stickiness.type"), Dict{String, Any}("Value" => "86400", "Key" => "stickiness.lb_cookie.duration_seconds")])
end

set_rule_priorities_1_patch = @patch function set_rule_priorities(a...; b...)
    return Dict{String, Any}("Rules" => Any[Dict{String, Any}("Actions" => Any[Dict{String, Any}("Type" => "forward", "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067")], "Conditions" => Any[Dict{String, Any}("Values" => Any["/img/*"], "Field" => "path-pattern")], "IsDefault" => false, "Priority" => "5", "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3")])
end

set_security_groups_1_patch = @patch function set_security_groups(a...; b...)
    return Dict{String, Any}("SecurityGroupIds" => Any["sg-5943793c"])
end

set_subnets_1_patch = @patch function set_subnets(a...; b...)
    return Dict{String, Any}("AvailabilityZones" => Any[Dict{String, Any}("ZoneName" => "us-west-2a", "SubnetId" => "subnet-8360a9e7"), Dict{String, Any}("ZoneName" => "us-west-2b", "SubnetId" => "subnet-b7d581c0")])
end

