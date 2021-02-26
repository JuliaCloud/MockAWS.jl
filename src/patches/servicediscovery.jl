using Mocking

create_http_namespace_1_patch = @patch function create_http_namespace(a...; b...)
    return Dict{String,Any}("OperationId" => "httpvoqozuhfet5kzxoxg-a-response-example")
end

create_private_dns_namespace_1_patch = @patch function create_private_dns_namespace(a...; b...)
    return Dict{String,Any}("OperationId" => "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd")
end

create_public_dns_namespace_1_patch = @patch function create_public_dns_namespace(a...; b...)
    return Dict{String,Any}("OperationId" => "dns2voqozuhfet5kzxoxg-a-response-example")
end

create_service_1_patch = @patch function create_service(a...; b...)
    return Dict{String,Any}("Service" => Dict{String,Any}("Arn" => "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-p5zdwlg5uvvzjita","Id" => "srv-p5zdwlg5uvvzjita","DnsConfig" => Dict{String,Any}("NamespaceId" => "ns-ylexjili4cdxy3xm","RoutingPolicy" => "MULTIVALUE","DnsRecords" => Any[Dict{String,Any}("TTL" => 60,"Type" => "A")]),"NamespaceId" => "ns-ylexjili4cdxy3xm","CreateDate" => 1.587081768334e9,"Name" => "myservice","CreatorRequestId" => "567c1193-6b00-4308-bd57-ad38a8822d25"))
end

delete_namespace_1_patch = @patch function delete_namespace(a...; b...)
    return Dict{String,Any}("OperationId" => "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k98y6drk")
end

delete_service_1_patch = @patch function delete_service(a...; b...)
    return Dict{String,Any}()
end

deregister_instance_1_patch = @patch function deregister_instance(a...; b...)
    return Dict{String,Any}("OperationId" => "4yejorelbukcjzpnr6tlmrghsjwpngf4-k98rnaiq")
end

discover_instances_1_patch = @patch function discover_instances(a...; b...)
    return Dict{String,Any}("Instances" => Any[Dict{String,Any}("NamespaceName" => "example.com","HealthStatus" => "UNKNOWN","Attributes" => Dict{String,Any}("AWS_INSTANCE_IPV4" => "172.2.1.3","AWS_INSTANCE_PORT" => "808"),"InstanceId" => "myservice-53","ServiceName" => "myservice")])
end

get_instance_1_patch = @patch function get_instance(a...; b...)
    return Dict{String,Any}("Instance" => Dict{String,Any}("Id" => "i-abcd1234","Attributes" => Dict{String,Any}("AWS_INSTANCE_IPV4" => "192.0.2.44","color" => "green","stage" => "beta","region" => "us-west-2","AWS_INSTANCE_PORT" => "80")))
end

get_instances_health_status_1_patch = @patch function get_instances_health_status(a...; b...)
    return Dict{String,Any}("Status" => Dict{String,Any}("i-abcd1234" => "HEALTHY","i-abcd1235" => "UNHEALTHY"))
end

get_namespace_1_patch = @patch function get_namespace(a...; b...)
    return Dict{String,Any}("Namespace" => Dict{String,Any}("Arn" => "arn:aws:servicediscovery:us-west-2: 123456789120:namespace/ns-e1tpmexample0001","Id" => "ns-e1tpmexample0001","Description" => "Example.com AWS Cloud Map HTTP Namespace","Properties" => Dict{String,Any}("HttpProperties" => Dict{String,Any}("HttpName" => "example-http.com"),"DnsProperties" => Dict{String,Any}()),"Type" => "HTTP","CreateDate" => "20181118T211712Z","Name" => "example-http.com","CreatorRequestId" => "example-creator-request-id-0001"))
end

get_operation_1_patch = @patch function get_operation(a...; b...)
    return Dict{String,Any}("Operation" => Dict{String,Any}("Id" => "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd","Status" => "SUCCESS","Type" => "CREATE_NAMESPACE","UpdateDate" => 1.587055900469e9,"CreateDate" => 1.587055860121e9,"Targets" => Dict{String,Any}("NAMESPACE" => "ns-ylexjili4cdxy3xm")))
end

get_service_1_patch = @patch function get_service(a...; b...)
    return Dict{String,Any}("Service" => Dict{String,Any}("Arn" => "arn:aws:servicediscovery:us-west-2:123456789120:service/srv-e4anhexample0004","HealthCheckConfig" => Dict{String,Any}("ResourcePath" => "/","Type" => "HTTPS","FailureThreshold" => 3),"Description" => "Example.com AWS Cloud Map HTTP Service","Id" => "srv-e4anhexample0004","NamespaceId" => "ns-e4anhexample0004","CreateDate" => "20181118T211707Z","Name" => "example-http-service","CreatorRequestId" => "example-creator-request-id-0004"))
end

list_instances_1_patch = @patch function list_instances(a...; b...)
    return Dict{String,Any}("Instances" => Any[Dict{String,Any}("Id" => "i-06bdabbae60f65a4e","Attributes" => Dict{String,Any}("AWS_INSTANCE_IPV4" => "172.2.1.3","AWS_INSTANCE_PORT" => "808"))])
end

list_namespaces_1_patch = @patch function list_namespaces(a...; b...)
    return Dict{String,Any}("Namespaces" => Any[Dict{String,Any}("Arn" => "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-a3ccy2e7e3a7rile","Id" => "ns-a3ccy2e7e3a7rile","Type" => "DNS_PRIVATE","CreateDate" => 1.585354387357e9,"Name" => "local","Properties" => Dict{String,Any}("HttpProperties" => Dict{String,Any}("HttpName" => "local"),"DnsProperties" => Dict{String,Any}("HostedZoneId" => "Z06752353VBUDTC32S84S"))), Dict{String,Any}("Arn" => "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-pocfyjtrsmwtvcxx","Id" => "ns-pocfyjtrsmwtvcxx","Description" => "My second namespace","Type" => "HTTP","CreateDate" => 1.586468974698e9,"Name" => "My-second-namespace","Properties" => Dict{String,Any}("HttpProperties" => Dict{String,Any}("HttpName" => "My-second-namespace"),"DnsProperties" => Dict{String,Any}())), Dict{String,Any}("Arn" => "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-ylexjili4cdxy3xm","Id" => "ns-ylexjili4cdxy3xm","Type" => "DNS_PRIVATE","CreateDate" => 1.587055896798e9,"Name" => "example.com","Properties" => Dict{String,Any}("HttpProperties" => Dict{String,Any}("HttpName" => "example.com"),"DnsProperties" => Dict{String,Any}("HostedZoneId" => "Z09983722P0QME1B3KC8I")))])
end

list_operations_1_patch = @patch function list_operations(a...; b...)
    return Dict{String,Any}("Operations" => Any[Dict{String,Any}("Id" => "76yy8ovhpdz0plmjzbsnqgnrqvpv2qdt-kexample","Status" => "SUCCESS"), Dict{String,Any}("Id" => "prysnyzpji3u2ciy45nke83x2zanl7yk-dexample","Status" => "SUCCESS"), Dict{String,Any}("Id" => "ko4ekftir7kzlbechsh7xvcdgcpk66gh-7example","Status" => "PENDING")])
end

list_services_1_patch = @patch function list_services(a...; b...)
    return Dict{String,Any}("Services" => Any[Dict{String,Any}("Arn" => "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-p5zdwlg5uvvzjita","Id" => "srv-p5zdwlg5uvvzjita","DnsConfig" => Dict{String,Any}("RoutingPolicy" => "MULTIVALUE","DnsRecords" => Any[Dict{String,Any}("TTL" => 60,"Type" => "A")]),"CreateDate" => 1.587081768334e9,"Name" => "myservice")])
end

list_tags_for_resource_1_patch = @patch function list_tags_for_resource(a...; b...)
    return Dict{String,Any}("Tags" => Any[Dict{String,Any}("Value" => "Zeta","Key" => "Project"), Dict{String,Any}("Value" => "Engineering","Key" => "Department")])
end

register_instance_1_patch = @patch function register_instance(a...; b...)
    return Dict{String,Any}("OperationId" => "4yejorelbukcjzpnr6tlmrghsjwpngf4-k95yg2u7")
end

tag_resource_1_patch = @patch function tag_resource(a...; b...)
    return Dict{String,Any}()
end

untag_resource_1_patch = @patch function untag_resource(a...; b...)
    return Dict{String,Any}()
end

update_service_1_patch = @patch function update_service(a...; b...)
    return Dict{String,Any}("OperationId" => "m35hsdrkxwjffm3xef4bxyy6vc3ewakx-jdn3y5g5")
end

