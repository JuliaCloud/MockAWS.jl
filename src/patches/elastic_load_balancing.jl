using Mocking

apply_security_groups_to_load_balancer_1_patch = @patch function apply_security_groups_to_load_balancer(a...; b...)
    return Dict{String, Any}("SecurityGroups" => Any["sg-fc448899"])
end

attach_load_balancer_to_subnets_1_patch = @patch function attach_load_balancer_to_subnets(a...; b...)
    return Dict{String, Any}("Subnets" => Any["subnet-15aaab61", "subnet-0ecac448"])
end

configure_health_check_1_patch = @patch function configure_health_check(a...; b...)
    return Dict{String, Any}("HealthCheck" => Dict{String, Any}("Interval" => 30, "UnhealthyThreshold" => 2, "Timeout" => 3, "HealthyThreshold" => 2, "Target" => "HTTP:80/png"))
end

create_load_balancer_1_patch = @patch function create_load_balancer(a...; b...)
    return Dict{String, Any}("DNSName" => "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com")
end

create_load_balancer_2_patch = @patch function create_load_balancer(a...; b...)
    return Dict{String, Any}("DNSName" => "my-load-balancer-123456789.us-west-2.elb.amazonaws.com")
end

create_load_balancer_3_patch = @patch function create_load_balancer(a...; b...)
    return Dict{String, Any}("DNSName" => "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com")
end

create_load_balancer_4_patch = @patch function create_load_balancer(a...; b...)
    return Dict{String, Any}("DNSName" => "my-load-balancer-123456789.us-west-2.elb.amazonaws.com")
end

create_load_balancer_5_patch = @patch function create_load_balancer(a...; b...)
    return Dict{String, Any}("DNSName" => "internal-my-load-balancer-123456789.us-west-2.elb.amazonaws.com")
end

deregister_instances_from_load_balancer_1_patch = @patch function deregister_instances_from_load_balancer(a...; b...)
    return Dict{String, Any}("Instances" => Any[Dict{String, Any}("InstanceId" => "i-207d9717"), Dict{String, Any}("InstanceId" => "i-afefb49b")])
end

describe_instance_health_1_patch = @patch function describe_instance_health(a...; b...)
    return Dict{String, Any}("InstanceStates" => Any[Dict{String, Any}("Description" => "N/A", "InstanceId" => "i-207d9717", "State" => "InService", "ReasonCode" => "N/A"), Dict{String, Any}("Description" => "N/A", "InstanceId" => "i-afefb49b", "State" => "InService", "ReasonCode" => "N/A")])
end

describe_load_balancer_attributes_1_patch = @patch function describe_load_balancer_attributes(a...; b...)
    return Dict{String, Any}("LoadBalancerAttributes" => Dict{String, Any}("ConnectionSettings" => Dict{String, Any}("IdleTimeout" => 60), "CrossZoneLoadBalancing" => Dict{String, Any}("Enabled" => false), "ConnectionDraining" => Dict{String, Any}("Timeout" => 300, "Enabled" => false), "AccessLog" => Dict{String, Any}("Enabled" => false)))
end

describe_load_balancer_policies_1_patch = @patch function describe_load_balancer_policies(a...; b...)
    return Dict{String, Any}("PolicyDescriptions" => Any[Dict{String, Any}("PolicyName" => "my-authentication-policy", "PolicyAttributeDescriptions" => Any[Dict{String, Any}("AttributeName" => "PublicKeyPolicyName", "AttributeValue" => "my-PublicKey-policy")], "PolicyTypeName" => "BackendServerAuthenticationPolicyType")])
end

describe_load_balancer_policy_types_1_patch = @patch function describe_load_balancer_policy_types(a...; b...)
    return Dict{String, Any}("PolicyTypeDescriptions" => Any[Dict{String, Any}("Description" => "Policy that controls whether to include the IP address and port of the originating request for TCP messages. This policy operates on TCP listeners only.", "PolicyTypeName" => "ProxyProtocolPolicyType", "PolicyAttributeTypeDescriptions" => Any[Dict{String, Any}("Cardinality" => "ONE", "AttributeName" => "ProxyProtocol", "AttributeType" => "Boolean")])])
end

describe_load_balancers_1_patch = @patch function describe_load_balancers(a...; b...)
    return Dict{String, Any}("LoadBalancerDescriptions" => Any[Dict{String, Any}("CanonicalHostedZoneNameID" => "Z3DZXE0EXAMPLE", "Subnets" => Any["subnet-15aaab61"], "AvailabilityZones" => Any["us-west-2a"], "CreatedTime" => "2015-03-19T03:24:02.650Z", "SecurityGroups" => Any["sg-a61988c3"], "CanonicalHostedZoneName" => "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com", "HealthCheck" => Dict{String, Any}("Interval" => 30, "UnhealthyThreshold" => 2, "Timeout" => 3, "HealthyThreshold" => 2, "Target" => "HTTP:80/png"), "Scheme" => "internet-facing", "ListenerDescriptions" => Any[Dict{String, Any}("PolicyNames" => Any[], "Listener" => Dict{String, Any}("LoadBalancerPort" => 80, "InstancePort" => 80, "Protocol" => "HTTP", "InstanceProtocol" => "HTTP")), Dict{String, Any}("PolicyNames" => Any["ELBSecurityPolicy-2015-03"], "Listener" => Dict{String, Any}("LoadBalancerPort" => 443, "InstancePort" => 443, "SSLCertificateId" => "arn:aws:iam::123456789012:server-certificate/my-server-cert", "Protocol" => "HTTPS", "InstanceProtocol" => "HTTPS"))], "SourceSecurityGroup" => Dict{String, Any}("GroupName" => "my-elb-sg", "OwnerAlias" => "123456789012"), "VPCId" => "vpc-a01106c2", "Policies" => Dict{String, Any}("OtherPolicies" => Any["my-PublicKey-policy", "my-authentication-policy", "my-SSLNegotiation-policy", "my-ProxyProtocol-policy", "ELBSecurityPolicy-2015-03"], "AppCookieStickinessPolicies" => Any[], "LBCookieStickinessPolicies" => Any[Dict{String, Any}("PolicyName" => "my-duration-cookie-policy", "CookieExpirationPeriod" => 60)]), "BackendServerDescriptions" => Any[Dict{String, Any}("PolicyNames" => Any["my-ProxyProtocol-policy"], "InstancePort" => 80)], "DNSName" => "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com", "Instances" => Any[Dict{String, Any}("InstanceId" => "i-207d9717"), Dict{String, Any}("InstanceId" => "i-afefb49b")], "LoadBalancerName" => "my-load-balancer")])
end

describe_tags_1_patch = @patch function describe_tags(a...; b...)
    return Dict{String, Any}("TagDescriptions" => Any[Dict{String, Any}("LoadBalancerName" => "my-load-balancer", "Tags" => Any[Dict{String, Any}("Value" => "lima", "Key" => "project"), Dict{String, Any}("Value" => "digital-media", "Key" => "department")])])
end

detach_load_balancer_from_subnets_1_patch = @patch function detach_load_balancer_from_subnets(a...; b...)
    return Dict{String, Any}("Subnets" => Any["subnet-15aaab61"])
end

disable_availability_zones_for_load_balancer_1_patch = @patch function disable_availability_zones_for_load_balancer(a...; b...)
    return Dict{String, Any}("AvailabilityZones" => Any["us-west-2b"])
end

enable_availability_zones_for_load_balancer_1_patch = @patch function enable_availability_zones_for_load_balancer(a...; b...)
    return Dict{String, Any}("AvailabilityZones" => Any["us-west-2a", "us-west-2b"])
end

modify_load_balancer_attributes_1_patch = @patch function modify_load_balancer_attributes(a...; b...)
    return Dict{String, Any}("LoadBalancerAttributes" => Dict{String, Any}("CrossZoneLoadBalancing" => Dict{String, Any}("Enabled" => true)), "LoadBalancerName" => "my-load-balancer")
end

modify_load_balancer_attributes_2_patch = @patch function modify_load_balancer_attributes(a...; b...)
    return Dict{String, Any}("LoadBalancerAttributes" => Dict{String, Any}("ConnectionDraining" => Dict{String, Any}("Timeout" => 300, "Enabled" => true)), "LoadBalancerName" => "my-load-balancer")
end

register_instances_with_load_balancer_1_patch = @patch function register_instances_with_load_balancer(a...; b...)
    return Dict{String, Any}("Instances" => Any[Dict{String, Any}("InstanceId" => "i-d6f6fae3"), Dict{String, Any}("InstanceId" => "i-207d9717"), Dict{String, Any}("InstanceId" => "i-afefb49b")])
end

