using Mocking

allocate_address_1_patch = @patch function allocate_address(a...; b...)
    return Dict{String, Any}("Domain" => "vpc", "AllocationId" => "eipalloc-64d5890a", "PublicIp" => "203.0.113.0")
end

allocate_address_2_patch = @patch function allocate_address(a...; b...)
    return Dict{String, Any}("Domain" => "standard", "PublicIp" => "198.51.100.0")
end

associate_address_1_patch = @patch function associate_address(a...; b...)
    return Dict{String, Any}("AssociationId" => "eipassoc-2bebb745")
end

associate_address_2_patch = @patch function associate_address(a...; b...)
    return Dict{String, Any}("AssociationId" => "eipassoc-2bebb745")
end

associate_iam_instance_profile_1_patch = @patch function associate_iam_instance_profile(a...; b...)
    return Dict{String, Any}("IamInstanceProfileAssociation" => Dict{String, Any}("AssociationId" => "iip-assoc-0e7736511a163c209", "InstanceId" => "i-123456789abcde123", "IamInstanceProfile" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:instance-profile/admin-role", "Id" => "AIPAJBLK7RKJKWDXVHIEC"), "State" => "associating"))
end

associate_route_table_1_patch = @patch function associate_route_table(a...; b...)
    return Dict{String, Any}("AssociationId" => "rtbassoc-781d0d1a")
end

attach_network_interface_1_patch = @patch function attach_network_interface(a...; b...)
    return Dict{String, Any}("AttachmentId" => "eni-attach-66c4350a")
end

attach_volume_1_patch = @patch function attach_volume(a...; b...)
    return Dict{String, Any}("AttachTime" => "2016-08-29T18:52:32.724Z", "InstanceId" => "i-01474ef662b89480", "VolumeId" => "vol-1234567890abcdef0", "Device" => "/dev/sdf", "State" => "attaching")
end

authorize_security_group_egress_1_patch = @patch function authorize_security_group_egress(a...; b...)
    return Dict{String, Any}()
end

authorize_security_group_egress_2_patch = @patch function authorize_security_group_egress(a...; b...)
    return Dict{String, Any}()
end

authorize_security_group_ingress_1_patch = @patch function authorize_security_group_ingress(a...; b...)
    return Dict{String, Any}()
end

authorize_security_group_ingress_2_patch = @patch function authorize_security_group_ingress(a...; b...)
    return Dict{String, Any}()
end

authorize_security_group_ingress_3_patch = @patch function authorize_security_group_ingress(a...; b...)
    return Dict{String, Any}()
end

cancel_spot_fleet_requests_1_patch = @patch function cancel_spot_fleet_requests(a...; b...)
    return Dict{String, Any}("SuccessfulFleetRequests" => Any[Dict{String, Any}("CurrentSpotFleetRequestState" => "cancelled_running", "PreviousSpotFleetRequestState" => "active", "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE")])
end

cancel_spot_fleet_requests_2_patch = @patch function cancel_spot_fleet_requests(a...; b...)
    return Dict{String, Any}("SuccessfulFleetRequests" => Any[Dict{String, Any}("CurrentSpotFleetRequestState" => "cancelled_terminating", "PreviousSpotFleetRequestState" => "active", "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE")])
end

cancel_spot_instance_requests_1_patch = @patch function cancel_spot_instance_requests(a...; b...)
    return Dict{String, Any}("CancelledSpotInstanceRequests" => Any[Dict{String, Any}("State" => "cancelled", "SpotInstanceRequestId" => "sir-08b93456")])
end

confirm_product_instance_1_patch = @patch function confirm_product_instance(a...; b...)
    return Dict{String, Any}("OwnerId" => "123456789012")
end

copy_image_1_patch = @patch function copy_image(a...; b...)
    return Dict{String, Any}("ImageId" => "ami-438bea42")
end

copy_snapshot_1_patch = @patch function copy_snapshot(a...; b...)
    return Dict{String, Any}("SnapshotId" => "snap-066877671789bd71b")
end

create_customer_gateway_1_patch = @patch function create_customer_gateway(a...; b...)
    return Dict{String, Any}("CustomerGateway" => Dict{String, Any}("IpAddress" => "12.1.2.3", "Type" => "ipsec.1", "BgpAsn" => "65534", "CustomerGatewayId" => "cgw-0e11f167", "State" => "available"))
end

create_dhcp_options_1_patch = @patch function create_dhcp_options(a...; b...)
    return Dict{String, Any}("DhcpOptions" => Dict{String, Any}("DhcpOptionsId" => "dopt-d9070ebb", "DhcpConfigurations" => Any[Dict{String, Any}("Values" => Any[Dict{String, Any}("Value" => "10.2.5.2"), Dict{String, Any}("Value" => "10.2.5.1")], "Key" => "domain-name-servers")]))
end

create_image_1_patch = @patch function create_image(a...; b...)
    return Dict{String, Any}("ImageId" => "ami-1a2b3c4d")
end

create_internet_gateway_1_patch = @patch function create_internet_gateway(a...; b...)
    return Dict{String, Any}("InternetGateway" => Dict{String, Any}("Attachments" => Any[], "Tags" => Any[], "InternetGatewayId" => "igw-c0a643a9"))
end

create_launch_template_1_patch = @patch function create_launch_template(a...; b...)
    return Dict{String, Any}("LaunchTemplate" => Dict{String, Any}("LaunchTemplateName" => "my-template", "CreatedBy" => "arn:aws:iam::123456789012:root", "DefaultVersionNumber" => 1, "LaunchTemplateId" => "lt-01238c059e3466abc", "CreateTime" => "2017-11-27T09:13:24.000Z", "LatestVersionNumber" => 1))
end

create_launch_template_version_1_patch = @patch function create_launch_template_version(a...; b...)
    return Dict{String, Any}("LaunchTemplateVersion" => Dict{String, Any}("CreatedBy" => "arn:aws:iam::123456789012:root", "VersionNumber" => 2, "DefaultVersion" => false, "LaunchTemplateData" => Dict{String, Any}("InstanceType" => "t2.micro", "NetworkInterfaces" => Any[Dict{String, Any}("DeviceIndex" => 0, "AssociatePublicIpAddress" => true, "Ipv6Addresses" => Any[Dict{String, Any}("Ipv6Address" => "2001:db8:1234:1a00::123")], "SubnetId" => "subnet-7b16de0c")], "ImageId" => "ami-c998b6b2"), "LaunchTemplateId" => "lt-0abcd290751193123", "CreateTime" => "2017-12-01T13:35:46.000Z", "VersionDescription" => "WebVersion2", "LaunchTemplateName" => "my-template"))
end

create_nat_gateway_1_patch = @patch function create_nat_gateway(a...; b...)
    return Dict{String, Any}("NatGateway" => Dict{String, Any}("NatGatewayId" => "nat-08d48af2a8e83edfd", "NatGatewayAddresses" => Any[Dict{String, Any}("AllocationId" => "eipalloc-37fc1a52")], "VpcId" => "vpc-1122aabb", "CreateTime" => "2015-12-17T12:45:26.732Z", "State" => "pending", "SubnetId" => "subnet-1a2b3c4d"))
end

create_network_acl_1_patch = @patch function create_network_acl(a...; b...)
    return Dict{String, Any}("NetworkAcl" => Dict{String, Any}("Tags" => Any[], "IsDefault" => false, "Entries" => Any[Dict{String, Any}("CidrBlock" => "0.0.0.0/0", "Egress" => true, "RuleNumber" => 32767, "RuleAction" => "deny", "Protocol" => "-1"), Dict{String, Any}("CidrBlock" => "0.0.0.0/0", "Egress" => false, "RuleNumber" => 32767, "RuleAction" => "deny", "Protocol" => "-1")], "Associations" => Any[], "NetworkAclId" => "acl-5fb85d36", "VpcId" => "vpc-a01106c2"))
end

create_network_interface_1_patch = @patch function create_network_interface(a...; b...)
    return Dict{String, Any}("NetworkInterface" => Dict{String, Any}("MacAddress" => "02:1a:80:41:52:9c", "RequesterManaged" => false, "OwnerId" => "123456789012", "Status" => "pending", "VpcId" => "vpc-a01106c2", "Groups" => Any[Dict{String, Any}("GroupName" => "default", "GroupId" => "sg-903004f8")], "PrivateIpAddress" => "10.0.2.17", "SubnetId" => "subnet-9d4a7b6c", "SourceDestCheck" => true, "Description" => "my network interface", "AvailabilityZone" => "us-east-1d", "NetworkInterfaceId" => "eni-e5aa89a3", "PrivateIpAddresses" => Any[Dict{String, Any}("PrivateIpAddress" => "10.0.2.17", "Primary" => true)], "TagSet" => Any[]))
end

create_placement_group_1_patch = @patch function create_placement_group(a...; b...)
    return Dict{String, Any}()
end

create_route_table_1_patch = @patch function create_route_table(a...; b...)
    return Dict{String, Any}("RouteTable" => Dict{String, Any}("Tags" => Any[], "RouteTableId" => "rtb-22574640", "Routes" => Any[Dict{String, Any}("DestinationCidrBlock" => "10.0.0.0/16", "State" => "active", "GatewayId" => "local")], "Associations" => Any[], "VpcId" => "vpc-a01106c2", "PropagatingVgws" => Any[]))
end

create_security_group_1_patch = @patch function create_security_group(a...; b...)
    return Dict{String, Any}("GroupId" => "sg-903004f8")
end

create_snapshot_1_patch = @patch function create_snapshot(a...; b...)
    return Dict{String, Any}("StartTime" => "2014-02-28T21:06:01.000Z", "Description" => "This is my root volume snapshot.", "SnapshotId" => "snap-066877671789bd71b", "Tags" => Any[], "VolumeSize" => 8, "VolumeId" => "vol-1234567890abcdef0", "OwnerId" => "012345678910", "State" => "pending")
end

create_spot_datafeed_subscription_1_patch = @patch function create_spot_datafeed_subscription(a...; b...)
    return Dict{String, Any}("SpotDatafeedSubscription" => Dict{String, Any}("Bucket" => "my-s3-bucket", "OwnerId" => "123456789012", "Prefix" => "spotdata", "State" => "Active"))
end

create_subnet_1_patch = @patch function create_subnet(a...; b...)
    return Dict{String, Any}("Subnet" => Dict{String, Any}("AvailableIpAddressCount" => 251, "CidrBlock" => "10.0.1.0/24", "AvailabilityZone" => "us-west-2c", "VpcId" => "vpc-a01106c2", "State" => "pending", "SubnetId" => "subnet-9d4a7b6c"))
end

create_volume_1_patch = @patch function create_volume(a...; b...)
    return Dict{String, Any}("SnapshotId" => "", "AvailabilityZone" => "us-east-1a", "VolumeType" => "gp2", "VolumeId" => "vol-6b60b7c7", "Encrypted" => false, "CreateTime" => "2016-08-29T18:52:32.724Z", "Iops" => 240, "State" => "creating", "Size" => 80)
end

create_volume_2_patch = @patch function create_volume(a...; b...)
    return Dict{String, Any}("SnapshotId" => "snap-066877671789bd71b", "Attachments" => Any[], "Tags" => Any[], "AvailabilityZone" => "us-east-1a", "VolumeType" => "io1", "VolumeId" => "vol-1234567890abcdef0", "CreateTime" => "2016-08-29T18:52:32.724Z", "Iops" => 1000, "State" => "creating", "Size" => 500)
end

create_vpc_1_patch = @patch function create_vpc(a...; b...)
    return Dict{String, Any}("Vpc" => Dict{String, Any}("CidrBlock" => "10.0.0.0/16", "InstanceTenancy" => "default", "DhcpOptionsId" => "dopt-7a8b9c2d", "VpcId" => "vpc-a01106c2", "State" => "pending"))
end

delete_launch_template_1_patch = @patch function delete_launch_template(a...; b...)
    return Dict{String, Any}("LaunchTemplate" => Dict{String, Any}("LaunchTemplateName" => "my-template", "CreatedBy" => "arn:aws:iam::123456789012:root", "DefaultVersionNumber" => 2, "LaunchTemplateId" => "lt-0abcd290751193123", "CreateTime" => "2017-11-23T16:46:25.000Z", "LatestVersionNumber" => 2))
end

delete_launch_template_versions_1_patch = @patch function delete_launch_template_versions(a...; b...)
    return Dict{String, Any}("UnsuccessfullyDeletedLaunchTemplateVersions" => Any[], "SuccessfullyDeletedLaunchTemplateVersions" => Any[Dict{String, Any}("VersionNumber" => 1, "LaunchTemplateId" => "lt-0abcd290751193123", "LaunchTemplateName" => "my-template")])
end

delete_nat_gateway_1_patch = @patch function delete_nat_gateway(a...; b...)
    return Dict{String, Any}("NatGatewayId" => "nat-04ae55e711cec5680")
end

delete_placement_group_1_patch = @patch function delete_placement_group(a...; b...)
    return Dict{String, Any}()
end

delete_security_group_1_patch = @patch function delete_security_group(a...; b...)
    return Dict{String, Any}()
end

delete_snapshot_1_patch = @patch function delete_snapshot(a...; b...)
    return Dict{String, Any}()
end

delete_volume_1_patch = @patch function delete_volume(a...; b...)
    return Dict{String, Any}()
end

describe_account_attributes_1_patch = @patch function describe_account_attributes(a...; b...)
    return Dict{String, Any}("AccountAttributes" => Any[Dict{String, Any}("AttributeValues" => Any[Dict{String, Any}("AttributeValue" => "EC2"), Dict{String, Any}("AttributeValue" => "VPC")], "AttributeName" => "supported-platforms")])
end

describe_account_attributes_2_patch = @patch function describe_account_attributes(a...; b...)
    return Dict{String, Any}("AccountAttributes" => Any[Dict{String, Any}("AttributeValues" => Any[Dict{String, Any}("AttributeValue" => "EC2"), Dict{String, Any}("AttributeValue" => "VPC")], "AttributeName" => "supported-platforms"), Dict{String, Any}("AttributeValues" => Any[Dict{String, Any}("AttributeValue" => "5")], "AttributeName" => "vpc-max-security-groups-per-interface"), Dict{String, Any}("AttributeValues" => Any[Dict{String, Any}("AttributeValue" => "5")], "AttributeName" => "max-elastic-ips"), Dict{String, Any}("AttributeValues" => Any[Dict{String, Any}("AttributeValue" => "20")], "AttributeName" => "max-instances"), Dict{String, Any}("AttributeValues" => Any[Dict{String, Any}("AttributeValue" => "5")], "AttributeName" => "vpc-max-elastic-ips"), Dict{String, Any}("AttributeValues" => Any[Dict{String, Any}("AttributeValue" => "none")], "AttributeName" => "default-vpc")])
end

describe_addresses_1_patch = @patch function describe_addresses(a...; b...)
    return Dict{String, Any}("Addresses" => Any[Dict{String, Any}("InstanceId" => "i-1234567890abcdef0", "Domain" => "standard", "PublicIp" => "198.51.100.0"), Dict{String, Any}("AssociationId" => "eipassoc-12345678", "PrivateIpAddress" => "10.0.1.241", "InstanceId" => "i-1234567890abcdef0", "NetworkInterfaceId" => "eni-12345678", "Domain" => "vpc", "AllocationId" => "eipalloc-12345678", "PublicIp" => "203.0.113.0", "NetworkInterfaceOwnerId" => "123456789012")])
end

describe_addresses_2_patch = @patch function describe_addresses(a...; b...)
    return Dict{String, Any}("Addresses" => Any[Dict{String, Any}("AssociationId" => "eipassoc-12345678", "PrivateIpAddress" => "10.0.1.241", "InstanceId" => "i-1234567890abcdef0", "NetworkInterfaceId" => "eni-12345678", "Domain" => "vpc", "AllocationId" => "eipalloc-12345678", "PublicIp" => "203.0.113.0", "NetworkInterfaceOwnerId" => "123456789012")])
end

describe_addresses_3_patch = @patch function describe_addresses(a...; b...)
    return Dict{String, Any}("Addresses" => Any[Dict{String, Any}("InstanceId" => "i-1234567890abcdef0", "Domain" => "standard", "PublicIp" => "198.51.100.0")])
end

describe_availability_zones_1_patch = @patch function describe_availability_zones(a...; b...)
    return Dict{String, Any}("AvailabilityZones" => Any[Dict{String, Any}("Messages" => Any[], "ZoneName" => "us-east-1b", "RegionName" => "us-east-1", "State" => "available"), Dict{String, Any}("Messages" => Any[], "ZoneName" => "us-east-1c", "RegionName" => "us-east-1", "State" => "available"), Dict{String, Any}("Messages" => Any[], "ZoneName" => "us-east-1d", "RegionName" => "us-east-1", "State" => "available"), Dict{String, Any}("Messages" => Any[], "ZoneName" => "us-east-1e", "RegionName" => "us-east-1", "State" => "available")])
end

describe_customer_gateways_1_patch = @patch function describe_customer_gateways(a...; b...)
    return Dict{String, Any}("CustomerGateways" => Any[Dict{String, Any}("IpAddress" => "12.1.2.3", "Type" => "ipsec.1", "BgpAsn" => "65534", "CustomerGatewayId" => "cgw-0e11f167", "State" => "available")])
end

describe_dhcp_options_1_patch = @patch function describe_dhcp_options(a...; b...)
    return Dict{String, Any}("DhcpOptions" => Any[Dict{String, Any}("DhcpOptionsId" => "dopt-d9070ebb", "DhcpConfigurations" => Any[Dict{String, Any}("Values" => Any[Dict{String, Any}("Value" => "10.2.5.2"), Dict{String, Any}("Value" => "10.2.5.1")], "Key" => "domain-name-servers")])])
end

describe_iam_instance_profile_associations_1_patch = @patch function describe_iam_instance_profile_associations(a...; b...)
    return Dict{String, Any}("IamInstanceProfileAssociations" => Any[Dict{String, Any}("AssociationId" => "iip-assoc-0db249b1f25fa24b8", "InstanceId" => "i-09eb09efa73ec1dee", "IamInstanceProfile" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:instance-profile/admin-role", "Id" => "AIPAJVQN4F5WVLGCJDRGM"), "State" => "associated")])
end

describe_image_attribute_1_patch = @patch function describe_image_attribute(a...; b...)
    return Dict{String, Any}("LaunchPermissions" => Any[Dict{String, Any}("UserId" => "123456789012")], "ImageId" => "ami-5731123e")
end

describe_images_1_patch = @patch function describe_images(a...; b...)
    return Dict{String, Any}("Images" => Any[Dict{String, Any}("BlockDeviceMappings" => Any[Dict{String, Any}("Ebs" => Dict{String, Any}("SnapshotId" => "snap-1234567890abcdef0", "DeleteOnTermination" => true, "VolumeType" => "standard", "VolumeSize" => 8), "DeviceName" => "/dev/sda1")], "Architecture" => "x86_64", "OwnerId" => "123456789012", "RootDeviceName" => "/dev/sda1", "State" => "available", "Name" => "My server", "KernelId" => "aki-88aa75e1", "Hypervisor" => "xen", "ImageLocation" => "123456789012/My server", "Public" => false, "Description" => "An AMI for my server", "ImageType" => "machine", "ImageId" => "ami-5731123e", "VirtualizationType" => "paravirtual", "RootDeviceType" => "ebs")])
end

describe_instance_attribute_1_patch = @patch function describe_instance_attribute(a...; b...)
    return Dict{String, Any}("InstanceType" => Dict{String, Any}("Value" => "t1.micro"), "InstanceId" => "i-1234567890abcdef0")
end

describe_instance_attribute_2_patch = @patch function describe_instance_attribute(a...; b...)
    return Dict{String, Any}("InstanceId" => "i-1234567890abcdef0", "DisableApiTermination" => Dict{String, Any}("Value" => "false"))
end

describe_instance_attribute_3_patch = @patch function describe_instance_attribute(a...; b...)
    return Dict{String, Any}("BlockDeviceMappings" => Any[Dict{String, Any}("Ebs" => Dict{String, Any}("AttachTime" => "2013-05-17T22:42:34.000Z", "DeleteOnTermination" => true, "Status" => "attached", "VolumeId" => "vol-049df61146c4d7901"), "DeviceName" => "/dev/sda1"), Dict{String, Any}("Ebs" => Dict{String, Any}("AttachTime" => "2013-09-10T23:07:00.000Z", "DeleteOnTermination" => false, "Status" => "attached", "VolumeId" => "vol-049df61146c4d7901"), "DeviceName" => "/dev/sdf")], "InstanceId" => "i-1234567890abcdef0")
end

describe_instance_status_1_patch = @patch function describe_instance_status(a...; b...)
    return Dict{String, Any}("InstanceStatuses" => Any[Dict{String, Any}("AvailabilityZone" => "us-east-1d", "InstanceId" => "i-1234567890abcdef0", "InstanceState" => Dict{String, Any}("Code" => 16, "Name" => "running"), "InstanceStatus" => Dict{String, Any}("Status" => "ok", "Details" => Any[Dict{String, Any}("Status" => "passed", "Name" => "reachability")]), "SystemStatus" => Dict{String, Any}("Status" => "ok", "Details" => Any[Dict{String, Any}("Status" => "passed", "Name" => "reachability")]))])
end

describe_instances_1_patch = @patch function describe_instances(a...; b...)
    return Dict{String, Any}()
end

describe_instances_2_patch = @patch function describe_instances(a...; b...)
    return Dict{String, Any}()
end

describe_instances_3_patch = @patch function describe_instances(a...; b...)
    return Dict{String, Any}()
end

describe_internet_gateways_1_patch = @patch function describe_internet_gateways(a...; b...)
    return Dict{String, Any}("InternetGateways" => Any[Dict{String, Any}("Attachments" => Any[Dict{String, Any}("VpcId" => "vpc-a01106c2", "State" => "available")], "Tags" => Any[], "InternetGatewayId" => "igw-c0a643a9")])
end

describe_key_pairs_1_patch = @patch function describe_key_pairs(a...; b...)
    return Dict{String, Any}("KeyPairs" => Any[Dict{String, Any}("KeyFingerprint" => "1f:51:ae:28:bf:89:e9:d8:1f:25:5d:37:2d:7d:b8:ca:9f:f5:f1:6f", "KeyName" => "my-key-pair")])
end

describe_launch_template_versions_1_patch = @patch function describe_launch_template_versions(a...; b...)
    return Dict{String, Any}("LaunchTemplateVersions" => Any[Dict{String, Any}("CreatedBy" => "arn:aws:iam::123456789102:root", "VersionNumber" => 2, "DefaultVersion" => false, "LaunchTemplateData" => Dict{String, Any}("InstanceType" => "t2.medium", "NetworkInterfaces" => Any[Dict{String, Any}("DeviceIndex" => 0, "Groups" => Any["sg-7c227019"], "SubnetId" => "subnet-1a2b3c4d")], "KeyName" => "kp-us-east", "ImageId" => "ami-6057e21a"), "LaunchTemplateId" => "lt-068f72b72934aff71", "CreateTime" => "2017-11-20T13:12:32.000Z", "LaunchTemplateName" => "Webservers"), Dict{String, Any}("CreatedBy" => "arn:aws:iam::123456789102:root", "VersionNumber" => 1, "DefaultVersion" => true, "LaunchTemplateData" => Dict{String, Any}("InstanceType" => "t2.medium", "NetworkInterfaces" => Any[Dict{String, Any}("DeviceIndex" => 0, "DeleteOnTermination" => false, "AssociatePublicIpAddress" => true, "Groups" => Any["sg-7c227019"], "SubnetId" => "subnet-7b16de0c")], "UserData" => "", "KeyName" => "kp-us-east", "ImageId" => "ami-aabbcc11"), "LaunchTemplateId" => "lt-068f72b72934aff71", "CreateTime" => "2017-11-20T12:52:33.000Z", "LaunchTemplateName" => "Webservers")])
end

describe_launch_templates_1_patch = @patch function describe_launch_templates(a...; b...)
    return Dict{String, Any}("LaunchTemplates" => Any[Dict{String, Any}("LaunchTemplateName" => "my-template", "CreatedBy" => "arn:aws:iam::123456789012:root", "DefaultVersionNumber" => 1, "LaunchTemplateId" => "lt-01238c059e3466abc", "CreateTime" => "2018-01-16T04:32:57.000Z", "LatestVersionNumber" => 1)])
end

describe_moving_addresses_1_patch = @patch function describe_moving_addresses(a...; b...)
    return Dict{String, Any}("MovingAddressStatuses" => Any[Dict{String, Any}("MoveStatus" => "MovingToVpc", "PublicIp" => "198.51.100.0")])
end

describe_nat_gateways_1_patch = @patch function describe_nat_gateways(a...; b...)
    return Dict{String, Any}("NatGateways" => Any[Dict{String, Any}("NatGatewayId" => "nat-05dba92075d71c408", "NatGatewayAddresses" => Any[Dict{String, Any}("NetworkInterfaceId" => "eni-9dec76cd", "PrivateIp" => "10.0.0.149", "AllocationId" => "eipalloc-89c620ec", "PublicIp" => "198.11.222.333")], "VpcId" => "vpc-1a2b3c4d", "CreateTime" => "2015-12-01T12:26:55.983Z", "State" => "available", "SubnetId" => "subnet-847e4dc2")])
end

describe_network_acls_1_patch = @patch function describe_network_acls(a...; b...)
    return Dict{String, Any}("NetworkAcls" => Any[Dict{String, Any}("Tags" => Any[], "IsDefault" => false, "Entries" => Any[Dict{String, Any}("CidrBlock" => "0.0.0.0/0", "Egress" => true, "RuleNumber" => 32767, "RuleAction" => "deny", "Protocol" => "-1"), Dict{String, Any}("CidrBlock" => "0.0.0.0/0", "Egress" => false, "RuleNumber" => 32767, "RuleAction" => "deny", "Protocol" => "-1")], "Associations" => Any[Dict{String, Any}("NetworkAclId" => "acl-9aeb5ef7", "SubnetId" => "subnet-65ea5f08", "NetworkAclAssociationId" => "aclassoc-66ea5f0b")], "NetworkAclId" => "acl-5fb85d36", "VpcId" => "vpc-a01106c2")])
end

describe_network_interface_attribute_1_patch = @patch function describe_network_interface_attribute(a...; b...)
    return Dict{String, Any}("Attachment" => Dict{String, Any}("DeviceIndex" => 0, "AttachTime" => "2015-05-21T20:02:20.000Z", "AttachmentId" => "eni-attach-43348162", "DeleteOnTermination" => true, "InstanceId" => "i-1234567890abcdef0", "Status" => "attached", "InstanceOwnerId" => "123456789012"), "NetworkInterfaceId" => "eni-686ea200")
end

describe_network_interface_attribute_2_patch = @patch function describe_network_interface_attribute(a...; b...)
    return Dict{String, Any}("Description" => Dict{String, Any}("Value" => "My description"), "NetworkInterfaceId" => "eni-686ea200")
end

describe_network_interface_attribute_3_patch = @patch function describe_network_interface_attribute(a...; b...)
    return Dict{String, Any}("NetworkInterfaceId" => "eni-686ea200", "Groups" => Any[Dict{String, Any}("GroupName" => "my-security-group", "GroupId" => "sg-903004f8")])
end

describe_network_interface_attribute_4_patch = @patch function describe_network_interface_attribute(a...; b...)
    return Dict{String, Any}("SourceDestCheck" => Dict{String, Any}("Value" => true), "NetworkInterfaceId" => "eni-686ea200")
end

describe_network_interfaces_1_patch = @patch function describe_network_interfaces(a...; b...)
    return Dict{String, Any}("NetworkInterfaces" => Any[Dict{String, Any}("MacAddress" => "02:2f:8f:b0:cf:75", "RequesterManaged" => false, "OwnerId" => "123456789012", "PrivateDnsName" => "ip-10-0-1-17.ec2.internal", "Attachment" => Dict{String, Any}("DeviceIndex" => 1, "AttachTime" => "2013-11-30T23:36:42.000Z", "AttachmentId" => "eni-attach-66c4350a", "DeleteOnTermination" => false, "InstanceId" => "i-1234567890abcdef0", "Status" => "attached", "InstanceOwnerId" => "123456789012"), "Status" => "in-use", "VpcId" => "vpc-a01106c2", "Groups" => Any[Dict{String, Any}("GroupName" => "default", "GroupId" => "sg-8637d3e3")], "PrivateIpAddress" => "10.0.1.17", "SubnetId" => "subnet-b61f49f0", "SourceDestCheck" => true, "Description" => "my network interface", "AvailabilityZone" => "us-east-1d", "NetworkInterfaceId" => "eni-e5aa89a3", "PrivateIpAddresses" => Any[Dict{String, Any}("PrivateIpAddress" => "10.0.1.17", "Primary" => true, "PrivateDnsName" => "ip-10-0-1-17.ec2.internal", "Association" => Dict{String, Any}("AssociationId" => "eipassoc-0fbb766a", "PublicDnsName" => "ec2-203-0-113-12.compute-1.amazonaws.com", "PublicIp" => "203.0.113.12", "IpOwnerId" => "123456789012"))], "Association" => Dict{String, Any}("AssociationId" => "eipassoc-0fbb766a", "PublicDnsName" => "ec2-203-0-113-12.compute-1.amazonaws.com", "PublicIp" => "203.0.113.12", "IpOwnerId" => "123456789012"), "TagSet" => Any[])])
end

describe_regions_1_patch = @patch function describe_regions(a...; b...)
    return Dict{String, Any}("Regions" => Any[Dict{String, Any}("Endpoint" => "ec2.ap-south-1.amazonaws.com", "RegionName" => "ap-south-1"), Dict{String, Any}("Endpoint" => "ec2.eu-west-1.amazonaws.com", "RegionName" => "eu-west-1"), Dict{String, Any}("Endpoint" => "ec2.ap-southeast-1.amazonaws.com", "RegionName" => "ap-southeast-1"), Dict{String, Any}("Endpoint" => "ec2.ap-southeast-2.amazonaws.com", "RegionName" => "ap-southeast-2"), Dict{String, Any}("Endpoint" => "ec2.eu-central-1.amazonaws.com", "RegionName" => "eu-central-1"), Dict{String, Any}("Endpoint" => "ec2.ap-northeast-2.amazonaws.com", "RegionName" => "ap-northeast-2"), Dict{String, Any}("Endpoint" => "ec2.ap-northeast-1.amazonaws.com", "RegionName" => "ap-northeast-1"), Dict{String, Any}("Endpoint" => "ec2.us-east-1.amazonaws.com", "RegionName" => "us-east-1"), Dict{String, Any}("Endpoint" => "ec2.sa-east-1.amazonaws.com", "RegionName" => "sa-east-1"), Dict{String, Any}("Endpoint" => "ec2.us-west-1.amazonaws.com", "RegionName" => "us-west-1"), Dict{String, Any}("Endpoint" => "ec2.us-west-2.amazonaws.com", "RegionName" => "us-west-2")])
end

describe_route_tables_1_patch = @patch function describe_route_tables(a...; b...)
    return Dict{String, Any}("RouteTables" => Any[Dict{String, Any}("Tags" => Any[], "RouteTableId" => "rtb-1f382e7d", "Routes" => Any[Dict{String, Any}("DestinationCidrBlock" => "10.0.0.0/16", "State" => "active", "GatewayId" => "local")], "Associations" => Any[Dict{String, Any}("Main" => true, "RouteTableId" => "rtb-1f382e7d", "RouteTableAssociationId" => "rtbassoc-d8ccddba")], "VpcId" => "vpc-a01106c2", "PropagatingVgws" => Any[])])
end

describe_scheduled_instance_availability_1_patch = @patch function describe_scheduled_instance_availability(a...; b...)
    return Dict{String, Any}("ScheduledInstanceAvailabilitySet" => Any[Dict{String, Any}("AvailableInstanceCount" => 20, "MaxTermDurationInDays" => 366, "InstanceType" => "c4.large", "MinTermDurationInDays" => 366, "Platform" => "Linux/UNIX", "FirstSlotStartTime" => "2016-01-31T00:00:00Z", "TotalScheduledInstanceHours" => 1219, "HourlyPrice" => "0.095", "PurchaseToken" => "eyJ2IjoiMSIsInMiOjEsImMiOi...", "Recurrence" => Dict{String, Any}("Interval" => 1, "OccurrenceDaySet" => Any[1], "OccurrenceRelativeToEnd" => false, "Frequency" => "Weekly"), "NetworkPlatform" => "EC2-VPC", "AvailabilityZone" => "us-west-2b", "SlotDurationInHours" => 23)])
end

describe_scheduled_instances_1_patch = @patch function describe_scheduled_instances(a...; b...)
    return Dict{String, Any}("ScheduledInstanceSet" => Any[Dict{String, Any}("TermEndDate" => "2017-01-31T09:00:00Z", "InstanceType" => "c4.large", "NextSlotStartTime" => "2016-01-31T09:00:00Z", "CreateDate" => "2016-01-25T21:43:38.612Z", "Platform" => "Linux/UNIX", "TotalScheduledInstanceHours" => 1696, "HourlyPrice" => "0.095", "ScheduledInstanceId" => "sci-1234-1234-1234-1234-123456789012", "Recurrence" => Dict{String, Any}("Interval" => 1, "OccurrenceDaySet" => Any[1], "OccurrenceRelativeToEnd" => false, "Frequency" => "Weekly", "OccurrenceUnit" => ""), "NetworkPlatform" => "EC2-VPC", "AvailabilityZone" => "us-west-2b", "SlotDurationInHours" => 32, "TermStartDate" => "2016-01-31T09:00:00Z", "InstanceCount" => 1)])
end

describe_security_group_references_1_patch = @patch function describe_security_group_references(a...; b...)
    return Dict{String, Any}("SecurityGroupReferenceSet" => Any[Dict{String, Any}("ReferencingVpcId" => "vpc-1a2b3c4d", "VpcPeeringConnectionId" => "pcx-b04deed9", "GroupId" => "sg-903004f8")])
end

describe_security_groups_1_patch = @patch function describe_security_groups(a...; b...)
    return Dict{String, Any}()
end

describe_security_groups_2_patch = @patch function describe_security_groups(a...; b...)
    return Dict{String, Any}()
end

describe_snapshot_attribute_1_patch = @patch function describe_snapshot_attribute(a...; b...)
    return Dict{String, Any}("SnapshotId" => "snap-066877671789bd71b", "CreateVolumePermissions" => Any[])
end

describe_snapshots_1_patch = @patch function describe_snapshots(a...; b...)
    return Dict{String, Any}("NextToken" => "", "Snapshots" => Any[Dict{String, Any}("StartTime" => "2014-02-28T21:28:32.000Z", "Description" => "This is my snapshot.", "SnapshotId" => "snap-1234567890abcdef0", "Progress" => "100%", "VolumeSize" => 8, "VolumeId" => "vol-049df61146c4d7901", "OwnerId" => "012345678910", "State" => "completed")])
end

describe_snapshots_2_patch = @patch function describe_snapshots(a...; b...)
    return Dict{String, Any}("NextToken" => "", "Snapshots" => Any[Dict{String, Any}("StartTime" => "2014-02-28T21:37:27.000Z", "Description" => "This is my copied snapshot.", "SnapshotId" => "snap-066877671789bd71b", "Progress" => "87%", "VolumeSize" => 8, "VolumeId" => "vol-1234567890abcdef0", "OwnerId" => "012345678910", "State" => "pending")])
end

describe_spot_datafeed_subscription_1_patch = @patch function describe_spot_datafeed_subscription(a...; b...)
    return Dict{String, Any}("SpotDatafeedSubscription" => Dict{String, Any}("Bucket" => "my-s3-bucket", "OwnerId" => "123456789012", "Prefix" => "spotdata", "State" => "Active"))
end

describe_spot_fleet_instances_1_patch = @patch function describe_spot_fleet_instances(a...; b...)
    return Dict{String, Any}("SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", "ActiveInstances" => Any[Dict{String, Any}("InstanceType" => "m3.medium", "InstanceId" => "i-1234567890abcdef0", "SpotInstanceRequestId" => "sir-08b93456")])
end

describe_spot_fleet_request_history_1_patch = @patch function describe_spot_fleet_request_history(a...; b...)
    return Dict{String, Any}("StartTime" => "2015-05-26T00:00:00Z", "NextToken" => "CpHNsscimcV5oH7bSbub03CI2Qms5+ypNpNm+53MNlR0YcXAkp0xFlfKf91yVxSExmbtma3awYxMFzNA663ZskT0AHtJ6TCb2Z8bQC2EnZgyELbymtWPfpZ1ZbauVg+P+TfGlWxWWB/Vr5dk5d4LfdgA/DRAHUrYgxzrEXAMPLE=", "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", "HistoryRecords" => Any[Dict{String, Any}("EventInformation" => Dict{String, Any}("EventSubType" => "submitted"), "EventType" => "fleetRequestChange", "Timestamp" => "2015-05-26T23:17:20.697Z"), Dict{String, Any}("EventInformation" => Dict{String, Any}("EventSubType" => "active"), "EventType" => "fleetRequestChange", "Timestamp" => "2015-05-26T23:17:20.873Z"), Dict{String, Any}("EventInformation" => Dict{String, Any}("EventSubType" => "launched", "InstanceId" => "i-1234567890abcdef0"), "EventType" => "instanceChange", "Timestamp" => "2015-05-26T23:21:21.712Z"), Dict{String, Any}("EventInformation" => Dict{String, Any}("EventSubType" => "launched", "InstanceId" => "i-1234567890abcdef1"), "EventType" => "instanceChange", "Timestamp" => "2015-05-26T23:21:21.816Z")])
end

describe_spot_fleet_requests_1_patch = @patch function describe_spot_fleet_requests(a...; b...)
    return Dict{String, Any}("SpotFleetRequestConfigs" => Any[Dict{String, Any}("SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", "SpotFleetRequestState" => "active", "SpotFleetRequestConfig" => Dict{String, Any}("IamFleetRole" => "arn:aws:iam::123456789012:role/my-spot-fleet-role", "SpotPrice" => "0.05", "TargetCapacity" => 20, "LaunchSpecifications" => Any[Dict{String, Any}("InstanceType" => "cc2.8xlarge", "NetworkInterfaces" => Any[Dict{String, Any}("DeviceIndex" => 0, "DeleteOnTermination" => false, "SecondaryPrivateIpAddressCount" => 0, "AssociatePublicIpAddress" => true, "SubnetId" => "subnet-a61dafcf")], "ImageId" => "ami-1a2b3c4d", "EbsOptimized" => false), Dict{String, Any}("InstanceType" => "r3.8xlarge", "NetworkInterfaces" => Any[Dict{String, Any}("DeviceIndex" => 0, "DeleteOnTermination" => false, "SecondaryPrivateIpAddressCount" => 0, "AssociatePublicIpAddress" => true, "SubnetId" => "subnet-a61dafcf")], "ImageId" => "ami-1a2b3c4d", "EbsOptimized" => false)]))])
end

describe_spot_instance_requests_1_patch = @patch function describe_spot_instance_requests(a...; b...)
    return Dict{String, Any}("SpotInstanceRequests" => Any[Dict{String, Any}("SpotPrice" => "0.010000", "ProductDescription" => "Linux/UNIX", "InstanceId" => "i-1234567890abcdef0", "Status" => Dict{String, Any}("UpdateTime" => "2014-04-30T18:16:21.000Z", "Message" => "Your Spot request is fulfilled.", "Code" => "fulfilled"), "Type" => "one-time", "LaunchedAvailabilityZone" => "us-west-1b", "CreateTime" => "2014-04-30T18:14:55.000Z", "LaunchSpecification" => Dict{String, Any}("BlockDeviceMappings" => Any[Dict{String, Any}("Ebs" => Dict{String, Any}("DeleteOnTermination" => true, "VolumeType" => "standard", "VolumeSize" => 8), "DeviceName" => "/dev/sda1")], "InstanceType" => "m1.small", "KeyName" => "my-key-pair", "SecurityGroups" => Any[Dict{String, Any}("GroupName" => "my-security-group", "GroupId" => "sg-e38f24a7")], "ImageId" => "ami-7aba833f", "EbsOptimized" => false), "State" => "active", "SpotInstanceRequestId" => "sir-08b93456")])
end

describe_spot_price_history_1_patch = @patch function describe_spot_price_history(a...; b...)
    return Dict{String, Any}("SpotPriceHistory" => Any[Dict{String, Any}("SpotPrice" => "0.080000", "ProductDescription" => "Linux/UNIX (Amazon VPC)", "AvailabilityZone" => "us-west-1a", "InstanceType" => "m1.xlarge", "Timestamp" => "2014-01-06T04:32:53.000Z"), Dict{String, Any}("SpotPrice" => "0.080000", "ProductDescription" => "Linux/UNIX (Amazon VPC)", "AvailabilityZone" => "us-west-1c", "InstanceType" => "m1.xlarge", "Timestamp" => "2014-01-05T11:28:26.000Z")])
end

describe_subnets_1_patch = @patch function describe_subnets(a...; b...)
    return Dict{String, Any}("Subnets" => Any[Dict{String, Any}("DefaultForAz" => false, "AvailableIpAddressCount" => 251, "CidrBlock" => "10.0.1.0/24", "MapPublicIpOnLaunch" => false, "AvailabilityZone" => "us-east-1c", "VpcId" => "vpc-a01106c2", "State" => "available", "SubnetId" => "subnet-9d4a7b6c")])
end

describe_tags_1_patch = @patch function describe_tags(a...; b...)
    return Dict{String, Any}("Tags" => Any[Dict{String, Any}("Value" => "test", "ResourceType" => "instance", "ResourceId" => "i-1234567890abcdef8", "Key" => "Stack"), Dict{String, Any}("Value" => "Beta Server", "ResourceType" => "instance", "ResourceId" => "i-1234567890abcdef8", "Key" => "Name")])
end

describe_volume_attribute_1_patch = @patch function describe_volume_attribute(a...; b...)
    return Dict{String, Any}("AutoEnableIO" => Dict{String, Any}("Value" => false), "VolumeId" => "vol-049df61146c4d7901")
end

describe_volume_status_1_patch = @patch function describe_volume_status(a...; b...)
    return Dict{String, Any}("VolumeStatuses" => Any[Dict{String, Any}("Actions" => Any[], "AvailabilityZone" => "us-east-1a", "VolumeStatus" => Dict{String, Any}("Status" => "ok", "Details" => Any[Dict{String, Any}("Status" => "passed", "Name" => "io-enabled"), Dict{String, Any}("Status" => "not-applicable", "Name" => "io-performance")]), "VolumeId" => "vol-1234567890abcdef0", "Events" => Any[])])
end

describe_volume_status_2_patch = @patch function describe_volume_status(a...; b...)
    return Dict{String, Any}("VolumeStatuses" => Any[])
end

describe_volumes_1_patch = @patch function describe_volumes(a...; b...)
    return Dict{String, Any}("NextToken" => "", "Volumes" => Any[Dict{String, Any}("SnapshotId" => "snap-1234567890abcdef0", "Attachments" => Any[Dict{String, Any}("AttachTime" => "2013-12-18T22:35:00.000Z", "DeleteOnTermination" => true, "InstanceId" => "i-1234567890abcdef0", "VolumeId" => "vol-049df61146c4d7901", "Device" => "/dev/sda1", "State" => "attached")], "AvailabilityZone" => "us-east-1a", "VolumeType" => "standard", "VolumeId" => "vol-049df61146c4d7901", "CreateTime" => "2013-12-18T22:35:00.084Z", "State" => "in-use", "Size" => 8)])
end

describe_volumes_2_patch = @patch function describe_volumes(a...; b...)
    return Dict{String, Any}("Volumes" => Any[Dict{String, Any}("SnapshotId" => "snap-1234567890abcdef0", "Attachments" => Any[Dict{String, Any}("AttachTime" => "2013-12-18T22:35:00.000Z", "DeleteOnTermination" => true, "InstanceId" => "i-1234567890abcdef0", "VolumeId" => "vol-049df61146c4d7901", "Device" => "/dev/sda1", "State" => "attached")], "AvailabilityZone" => "us-east-1a", "VolumeType" => "standard", "VolumeId" => "vol-049df61146c4d7901", "CreateTime" => "2013-12-18T22:35:00.084Z", "State" => "in-use", "Size" => 8)])
end

describe_vpc_attribute_1_patch = @patch function describe_vpc_attribute(a...; b...)
    return Dict{String, Any}("VpcId" => "vpc-a01106c2", "EnableDnsSupport" => Dict{String, Any}("Value" => true))
end

describe_vpc_attribute_2_patch = @patch function describe_vpc_attribute(a...; b...)
    return Dict{String, Any}("EnableDnsHostnames" => Dict{String, Any}("Value" => true), "VpcId" => "vpc-a01106c2")
end

describe_vpcs_1_patch = @patch function describe_vpcs(a...; b...)
    return Dict{String, Any}("Vpcs" => Any[Dict{String, Any}("CidrBlock" => "10.0.0.0/16", "InstanceTenancy" => "default", "Tags" => Any[Dict{String, Any}("Value" => "MyVPC", "Key" => "Name")], "DhcpOptionsId" => "dopt-7a8b9c2d", "IsDefault" => false, "VpcId" => "vpc-a01106c2", "State" => "available")])
end

detach_volume_1_patch = @patch function detach_volume(a...; b...)
    return Dict{String, Any}("AttachTime" => "2014-02-27T19:23:06.000Z", "InstanceId" => "i-1234567890abcdef0", "VolumeId" => "vol-049df61146c4d7901", "Device" => "/dev/sdb", "State" => "detaching")
end

disassociate_iam_instance_profile_1_patch = @patch function disassociate_iam_instance_profile(a...; b...)
    return Dict{String, Any}("IamInstanceProfileAssociation" => Dict{String, Any}("AssociationId" => "iip-assoc-05020b59952902f5f", "InstanceId" => "i-123456789abcde123", "IamInstanceProfile" => Dict{String, Any}("Arn" => "arn:aws:iam::123456789012:instance-profile/admin-role", "Id" => "AIPAI5IVIHMFFYY2DKV5Y"), "State" => "disassociating"))
end

get_console_output_1_patch = @patch function get_console_output(a...; b...)
    return Dict{String, Any}("Output" => "...", "InstanceId" => "i-1234567890abcdef0", "Timestamp" => "2018-05-25T21:23:53.000Z")
end

get_launch_template_data_1_patch = @patch function get_launch_template_data(a...; b...)
    return Dict{String, Any}("LaunchTemplateData" => Dict{String, Any}("BlockDeviceMappings" => Any[Dict{String, Any}("Ebs" => Dict{String, Any}("SnapshotId" => "snap-02594938353ef77d3", "DeleteOnTermination" => true, "VolumeType" => "gp2", "VolumeSize" => 8, "Encrypted" => false, "Iops" => 100), "DeviceName" => "/dev/xvda")], "InstanceType" => "t2.medium", "Monitoring" => Dict{String, Any}("Enabled" => false), "NetworkInterfaces" => Any[Dict{String, Any}("Description" => "", "DeviceIndex" => 0, "DeleteOnTermination" => true, "PrivateIpAddress" => "10.0.3.233", "AssociatePublicIpAddress" => false, "Ipv6Addresses" => Any[], "NetworkInterfaceId" => "eni-4338b5a9", "Groups" => Any["sg-d14e1bb4"], "PrivateIpAddresses" => Any[Dict{String, Any}("PrivateIpAddress" => "10.0.3.233", "Primary" => true)], "SubnetId" => "subnet-5264e837")], "KeyName" => "my-key-pair", "Placement" => Dict{String, Any}("Tenancy" => "default", "AvailabilityZone" => "us-east-2b", "GroupName" => ""), "ImageId" => "ami-32cf7b4a", "EbsOptimized" => false))
end

modify_image_attribute_1_patch = @patch function modify_image_attribute(a...; b...)
    return Dict{String, Any}()
end

modify_image_attribute_2_patch = @patch function modify_image_attribute(a...; b...)
    return Dict{String, Any}()
end

modify_instance_attribute_1_patch = @patch function modify_instance_attribute(a...; b...)
    return Dict{String, Any}()
end

modify_instance_attribute_2_patch = @patch function modify_instance_attribute(a...; b...)
    return Dict{String, Any}()
end

modify_launch_template_1_patch = @patch function modify_launch_template(a...; b...)
    return Dict{String, Any}("LaunchTemplate" => Dict{String, Any}("LaunchTemplateName" => "WebServers", "CreatedBy" => "arn:aws:iam::123456789012:root", "DefaultVersionNumber" => 2, "LaunchTemplateId" => "lt-0abcd290751193123", "CreateTime" => "2017-12-01T13:35:46.000Z", "LatestVersionNumber" => 2))
end

modify_snapshot_attribute_1_patch = @patch function modify_snapshot_attribute(a...; b...)
    return Dict{String, Any}()
end

modify_snapshot_attribute_2_patch = @patch function modify_snapshot_attribute(a...; b...)
    return Dict{String, Any}()
end

modify_spot_fleet_request_1_patch = @patch function modify_spot_fleet_request(a...; b...)
    return Dict{String, Any}("Return" => true)
end

modify_spot_fleet_request_2_patch = @patch function modify_spot_fleet_request(a...; b...)
    return Dict{String, Any}("Return" => true)
end

modify_volume_attribute_1_patch = @patch function modify_volume_attribute(a...; b...)
    return Dict{String, Any}()
end

move_address_to_vpc_1_patch = @patch function move_address_to_vpc(a...; b...)
    return Dict{String, Any}("Status" => "MoveInProgress")
end

purchase_scheduled_instances_1_patch = @patch function purchase_scheduled_instances(a...; b...)
    return Dict{String, Any}("ScheduledInstanceSet" => Any[Dict{String, Any}("TermEndDate" => "2017-01-31T09:00:00Z", "InstanceType" => "c4.large", "NextSlotStartTime" => "2016-01-31T09:00:00Z", "CreateDate" => "2016-01-25T21:43:38.612Z", "Platform" => "Linux/UNIX", "TotalScheduledInstanceHours" => 1696, "HourlyPrice" => "0.095", "ScheduledInstanceId" => "sci-1234-1234-1234-1234-123456789012", "Recurrence" => Dict{String, Any}("Interval" => 1, "OccurrenceDaySet" => Any[1], "OccurrenceRelativeToEnd" => false, "Frequency" => "Weekly", "OccurrenceUnit" => ""), "NetworkPlatform" => "EC2-VPC", "AvailabilityZone" => "us-west-2b", "SlotDurationInHours" => 32, "TermStartDate" => "2016-01-31T09:00:00Z", "InstanceCount" => 1)])
end

reboot_instances_1_patch = @patch function reboot_instances(a...; b...)
    return Dict{String, Any}()
end

replace_network_acl_association_1_patch = @patch function replace_network_acl_association(a...; b...)
    return Dict{String, Any}("NewAssociationId" => "aclassoc-3999875b")
end

replace_route_table_association_1_patch = @patch function replace_route_table_association(a...; b...)
    return Dict{String, Any}("NewAssociationId" => "rtbassoc-3a1f0f58")
end

request_spot_fleet_1_patch = @patch function request_spot_fleet(a...; b...)
    return Dict{String, Any}("SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE")
end

request_spot_fleet_2_patch = @patch function request_spot_fleet(a...; b...)
    return Dict{String, Any}("SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE")
end

request_spot_fleet_3_patch = @patch function request_spot_fleet(a...; b...)
    return Dict{String, Any}("SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE")
end

request_spot_fleet_4_patch = @patch function request_spot_fleet(a...; b...)
    return Dict{String, Any}("SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE")
end

reset_image_attribute_1_patch = @patch function reset_image_attribute(a...; b...)
    return Dict{String, Any}()
end

reset_instance_attribute_1_patch = @patch function reset_instance_attribute(a...; b...)
    return Dict{String, Any}()
end

reset_snapshot_attribute_1_patch = @patch function reset_snapshot_attribute(a...; b...)
    return Dict{String, Any}()
end

restore_address_to_classic_1_patch = @patch function restore_address_to_classic(a...; b...)
    return Dict{String, Any}("Status" => "MoveInProgress", "PublicIp" => "198.51.100.0")
end

run_instances_1_patch = @patch function run_instances(a...; b...)
    return Dict{String, Any}()
end

run_scheduled_instances_1_patch = @patch function run_scheduled_instances(a...; b...)
    return Dict{String, Any}("InstanceIdSet" => Any["i-1234567890abcdef0"])
end

run_scheduled_instances_2_patch = @patch function run_scheduled_instances(a...; b...)
    return Dict{String, Any}("InstanceIdSet" => Any["i-1234567890abcdef0"])
end

start_instances_1_patch = @patch function start_instances(a...; b...)
    return Dict{String, Any}("StartingInstances" => Any[Dict{String, Any}("PreviousState" => Dict{String, Any}("Code" => 80, "Name" => "stopped"), "InstanceId" => "i-1234567890abcdef0", "CurrentState" => Dict{String, Any}("Code" => 0, "Name" => "pending"))])
end

stop_instances_1_patch = @patch function stop_instances(a...; b...)
    return Dict{String, Any}("StoppingInstances" => Any[Dict{String, Any}("PreviousState" => Dict{String, Any}("Code" => 16, "Name" => "running"), "InstanceId" => "i-1234567890abcdef0", "CurrentState" => Dict{String, Any}("Code" => 64, "Name" => "stopping"))])
end

terminate_instances_1_patch = @patch function terminate_instances(a...; b...)
    return Dict{String, Any}("TerminatingInstances" => Any[Dict{String, Any}("PreviousState" => Dict{String, Any}("Code" => 16, "Name" => "running"), "InstanceId" => "i-1234567890abcdef0", "CurrentState" => Dict{String, Any}("Code" => 32, "Name" => "shutting-down"))])
end

update_security_group_rule_descriptions_egress_1_patch = @patch function update_security_group_rule_descriptions_egress(a...; b...)
    return Dict{String, Any}()
end

update_security_group_rule_descriptions_ingress_1_patch = @patch function update_security_group_rule_descriptions_ingress(a...; b...)
    return Dict{String, Any}()
end

