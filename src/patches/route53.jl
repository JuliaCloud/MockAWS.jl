using Mocking

associate_vpcwith_hosted_zone_1_patch = @patch function associate_vpcwith_hosted_zone(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C3HC6WDB2UANE2","Comment" => "","Status" => "INSYNC","SubmittedAt" => "2017-01-31T01:36:41.958Z"))
end

change_resource_record_sets_10_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "Geolocation alias configuration for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_1_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "Web server for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_2_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "Web servers for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_3_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "CloudFront distribution for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_4_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "ELB load balancers for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_5_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "EC2 instances for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_6_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "ELB load balancers for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_7_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "Failover configuration for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_8_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "Failover alias configuration for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_resource_record_sets_9_patch = @patch function change_resource_record_sets(a...; b...)
    return Dict{String,Any}("ChangeInfo" => Dict{String,Any}("Id" => "/change/C2682N5HXP0BZ4","Comment" => "Geolocation configuration for example.com","Status" => "PENDING","SubmittedAt" => "2017-02-10T01:36:41.958Z"))
end

change_tags_for_resource_1_patch = @patch function change_tags_for_resource(a...; b...)
    return Dict{String,Any}()
end

get_hosted_zone_1_patch = @patch function get_hosted_zone(a...; b...)
    return Dict{String,Any}("HostedZone" => Dict{String,Any}("Id" => "/hostedzone/Z3M3LMPEXAMPLE","ResourceRecordSetCount" => 8,"CallerReference" => "C741617D-04E4-F8DE-B9D7-0D150FC61C2E","Config" => Dict{String,Any}("PrivateZone" => false),"Name" => "myawsbucket.com."),"DelegationSet" => Dict{String,Any}("NameServers" => Any["ns-2048.awsdns-64.com", "ns-2049.awsdns-65.net", "ns-2050.awsdns-66.org", "ns-2051.awsdns-67.co.uk"]))
end

