using Mocking

create_cluster_1_patch = @patch function create_cluster(a...; b...)
    return Dict{String,Any}("cluster" => Dict{String,Any}("runningTasksCount" => 0,"status" => "ACTIVE","activeServicesCount" => 0,"pendingTasksCount" => 0,"clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster","registeredContainerInstancesCount" => 0,"clusterName" => "my_cluster"))
end

create_service_1_patch = @patch function create_service(a...; b...)
    return Dict{String,Any}("service" => Dict{String,Any}("taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6","deployments" => Any[Dict{String,Any}("runningCount" => 0,"status" => "PRIMARY","taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6","id" => "ecs-svc/9223370564342348388","desiredCount" => 10,"updatedAt" => "2016-08-29T16:13:47.298Z","pendingCount" => 0,"createdAt" => "2016-08-29T16:13:47.298Z"), Dict{String,Any}("runningCount" => 0,"status" => "ACTIVE","taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6","id" => "ecs-svc/9223370564343611322","desiredCount" => 0,"updatedAt" => "2016-08-29T16:11:38.941Z","pendingCount" => 0,"createdAt" => "2016-08-29T15:52:44.481Z")],"pendingCount" => 0,"createdAt" => "2016-08-29T16:13:47.298Z","events" => Any[],"status" => "ACTIVE","clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/default","serviceArn" => "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service","deploymentConfiguration" => Dict{String,Any}("maximumPercent" => 200,"minimumHealthyPercent" => 100),"runningCount" => 0,"serviceName" => "ecs-simple-service","loadBalancers" => Any[],"desiredCount" => 10))
end

create_service_2_patch = @patch function create_service(a...; b...)
    return Dict{String,Any}("service" => Dict{String,Any}("roleArn" => "arn:aws:iam::012345678910:role/ecsServiceRole","taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-static:6","deployments" => Any[Dict{String,Any}("runningCount" => 0,"status" => "PRIMARY","taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-static:6","id" => "ecs-svc/9223370564343000923","desiredCount" => 10,"updatedAt" => "2016-08-29T16:02:54.884Z","pendingCount" => 0,"createdAt" => "2016-08-29T16:02:54.884Z")],"pendingCount" => 0,"createdAt" => "2016-08-29T16:02:54.884Z","events" => Any[],"status" => "ACTIVE","clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/default","serviceArn" => "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service-elb","deploymentConfiguration" => Dict{String,Any}("maximumPercent" => 200,"minimumHealthyPercent" => 100),"runningCount" => 0,"serviceName" => "ecs-simple-service-elb","loadBalancers" => Any[Dict{String,Any}("loadBalancerName" => "EC2Contai-EcsElast-15DCDAURT3ZO2","containerName" => "simple-app","containerPort" => 80)],"desiredCount" => 10))
end

delete_account_setting_1_patch = @patch function delete_account_setting(a...; b...)
    return Dict{String,Any}("setting" => Dict{String,Any}("name" => "serviceLongArnFormat","value" => "enabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName"))
end

delete_account_setting_2_patch = @patch function delete_account_setting(a...; b...)
    return Dict{String,Any}("setting" => Dict{String,Any}("name" => "containerInstanceLongArnFormat","value" => "enabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName"))
end

delete_cluster_1_patch = @patch function delete_cluster(a...; b...)
    return Dict{String,Any}("cluster" => Dict{String,Any}("runningTasksCount" => 0,"status" => "INACTIVE","activeServicesCount" => 0,"pendingTasksCount" => 0,"clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster","registeredContainerInstancesCount" => 0,"clusterName" => "my_cluster"))
end

delete_service_1_patch = @patch function delete_service(a...; b...)
    return Dict{String,Any}()
end

deregister_container_instance_1_patch = @patch function deregister_container_instance(a...; b...)
    return Dict{String,Any}()
end

describe_clusters_1_patch = @patch function describe_clusters(a...; b...)
    return Dict{String,Any}("clusters" => Any[Dict{String,Any}("status" => "ACTIVE","clusterArn" => "arn:aws:ecs:us-east-1:aws_account_id:cluster/default","clusterName" => "default")],"failures" => Any[])
end

describe_container_instances_1_patch = @patch function describe_container_instances(a...; b...)
    return Dict{String,Any}("containerInstances" => Any[Dict{String,Any}("runningTasksCount" => 1,"ec2InstanceId" => "i-807f3249","remainingResources" => Any[Dict{String,Any}("name" => "CPU","doubleValue" => 0.0,"integerValue" => 1948,"type" => "INTEGER","longValue" => 0), Dict{String,Any}("name" => "MEMORY","doubleValue" => 0.0,"integerValue" => 3668,"type" => "INTEGER","longValue" => 0), Dict{String,Any}("name" => "PORTS","doubleValue" => 0.0,"integerValue" => 0,"type" => "STRINGSET","longValue" => 0,"stringSetValue" => Any["2376", "22", "80", "51678", "2375"])],"status" => "ACTIVE","agentConnected" => true,"containerInstanceArn" => "arn:aws:ecs:us-east-1:012345678910:container-instance/f2756532-8f13-4d53-87c9-aed50dc94cd7","pendingTasksCount" => 0,"registeredResources" => Any[Dict{String,Any}("name" => "CPU","doubleValue" => 0.0,"integerValue" => 2048,"type" => "INTEGER","longValue" => 0), Dict{String,Any}("name" => "MEMORY","doubleValue" => 0.0,"integerValue" => 3768,"type" => "INTEGER","longValue" => 0), Dict{String,Any}("name" => "PORTS","doubleValue" => 0.0,"integerValue" => 0,"type" => "STRINGSET","longValue" => 0,"stringSetValue" => Any["2376", "22", "51678", "2375"])])],"failures" => Any[])
end

describe_services_1_patch = @patch function describe_services(a...; b...)
    return Dict{String,Any}("services" => Any[Dict{String,Any}("taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6","deployments" => Any[Dict{String,Any}("runningCount" => 0,"status" => "PRIMARY","taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6","id" => "ecs-svc/9223370564341623665","desiredCount" => 1,"updatedAt" => "2016-08-29T16:25:52.130Z","pendingCount" => 0,"createdAt" => "2016-08-29T16:25:52.130Z")],"pendingCount" => 0,"createdAt" => "2016-08-29T16:25:52.130Z","events" => Any[Dict{String,Any}("message" => "(service ecs-simple-service) was unable to place a task because no container instance met all of its requirements. The closest matching (container-instance 3f4de1c5-ffdd-4954-af7e-75b4be0c8841) is already using a port required by your task. For more information, see the Troubleshooting section of the Amazon ECS Developer Guide.","id" => "38c285e5-d335-4b68-8b15-e46dedc8e88d","createdAt" => "2016-08-29T16:25:58.520Z")],"status" => "ACTIVE","clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/default","serviceArn" => "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service","deploymentConfiguration" => Dict{String,Any}("maximumPercent" => 200,"minimumHealthyPercent" => 100),"runningCount" => 0,"serviceName" => "ecs-simple-service","loadBalancers" => Any[],"desiredCount" => 1)],"failures" => Any[])
end

describe_task_definition_1_patch = @patch function describe_task_definition(a...; b...)
    return Dict{String,Any}("taskDefinition" => Dict{String,Any}("containerDefinitions" => Any[Dict{String,Any}("essential" => true,"name" => "wordpress","links" => Any["mysql"],"cpu" => 10,"image" => "wordpress","mountPoints" => Any[],"portMappings" => Any[Dict{String,Any}("hostPort" => 80,"containerPort" => 80)],"memory" => 500,"environment" => Any[],"volumesFrom" => Any[]), Dict{String,Any}("essential" => true,"name" => "mysql","cpu" => 10,"image" => "mysql","mountPoints" => Any[],"portMappings" => Any[],"memory" => 500,"environment" => Any[Dict{String,Any}("name" => "MYSQL_ROOT_PASSWORD","value" => "password")],"volumesFrom" => Any[])],"family" => "hello_world","revision" => 8,"taskDefinitionArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/hello_world:8","volumes" => Any[]))
end

describe_tasks_1_patch = @patch function describe_tasks(a...; b...)
    return Dict{String,Any}("tasks" => Any[Dict{String,Any}("overrides" => Dict{String,Any}("containerOverrides" => Any[Dict{String,Any}("name" => "ecs-demo")]),"desiredStatus" => "RUNNING","taskDefinitionArn" => "arn:aws:ecs:<region>:<aws_account_id>:task-definition/amazon-ecs-sample:1","lastStatus" => "RUNNING","taskArn" => "arn:aws:ecs:<region>:<aws_account_id>:task/c5cba4eb-5dad-405e-96db-71ef8eefe6a8","clusterArn" => "arn:aws:ecs:<region>:<aws_account_id>:cluster/default","containerInstanceArn" => "arn:aws:ecs:<region>:<aws_account_id>:container-instance/18f9eda5-27d7-4c19-b133-45adc516e8fb","containers" => Any[Dict{String,Any}("name" => "ecs-demo","lastStatus" => "RUNNING","taskArn" => "arn:aws:ecs:<region>:<aws_account_id>:task/c5cba4eb-5dad-405e-96db-71ef8eefe6a8","containerArn" => "arn:aws:ecs:<region>:<aws_account_id>:container/7c01765b-c588-45b3-8290-4ba38bd6c5a6","networkBindings" => Any[Dict{String,Any}("bindIP" => "0.0.0.0","hostPort" => 80,"containerPort" => 80)])],"startedBy" => "ecs-svc/9223370608528463088")],"failures" => Any[])
end

list_account_settings_1_patch = @patch function list_account_settings(a...; b...)
    return Dict{String,Any}("settings" => Any[Dict{String,Any}("name" => "containerInstanceLongArnFormat","value" => "disabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName"), Dict{String,Any}("name" => "serviceLongArnFormat","value" => "enabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName"), Dict{String,Any}("name" => "taskLongArnFormat","value" => "disabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName")])
end

list_account_settings_2_patch = @patch function list_account_settings(a...; b...)
    return Dict{String,Any}("settings" => Any[Dict{String,Any}("name" => "containerInstanceLongArnFormat","value" => "disabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName"), Dict{String,Any}("name" => "serviceLongArnFormat","value" => "enabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName"), Dict{String,Any}("name" => "taskLongArnFormat","value" => "disabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName")])
end

list_clusters_1_patch = @patch function list_clusters(a...; b...)
    return Dict{String,Any}("clusterArns" => Any["arn:aws:ecs:us-east-1:<aws_account_id>:cluster/test", "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/default"])
end

list_container_instances_1_patch = @patch function list_container_instances(a...; b...)
    return Dict{String,Any}("containerInstanceArns" => Any["arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/f6bbb147-5370-4ace-8c73-c7181ded911f", "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/ffe3d344-77e2-476c-a4d0-bf560ad50acb"])
end

list_services_1_patch = @patch function list_services(a...; b...)
    return Dict{String,Any}("serviceArns" => Any["arn:aws:ecs:us-east-1:012345678910:service/my-http-service"])
end

list_tags_for_resource_1_patch = @patch function list_tags_for_resource(a...; b...)
    return Dict{String,Any}("tags" => Any[Dict{String,Any}("key" => "team","value" => "dev")])
end

list_task_definition_families_1_patch = @patch function list_task_definition_families(a...; b...)
    return Dict{String,Any}("families" => Any["node-js-app", "web-timer", "hpcc", "hpcc-c4-8xlarge"])
end

list_task_definition_families_2_patch = @patch function list_task_definition_families(a...; b...)
    return Dict{String,Any}("families" => Any["hpcc", "hpcc-c4-8xlarge"])
end

list_task_definitions_1_patch = @patch function list_task_definitions(a...; b...)
    return Dict{String,Any}("taskDefinitionArns" => Any["arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep300:2", "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1", "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3", "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4", "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5", "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6"])
end

list_task_definitions_2_patch = @patch function list_task_definitions(a...; b...)
    return Dict{String,Any}("taskDefinitionArns" => Any["arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3", "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4", "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5", "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6"])
end

list_tasks_1_patch = @patch function list_tasks(a...; b...)
    return Dict{String,Any}("taskArns" => Any["arn:aws:ecs:us-east-1:012345678910:task/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84", "arn:aws:ecs:us-east-1:012345678910:task/6b809ef6-c67e-4467-921f-ee261c15a0a1"])
end

list_tasks_2_patch = @patch function list_tasks(a...; b...)
    return Dict{String,Any}("taskArns" => Any["arn:aws:ecs:us-east-1:012345678910:task/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84"])
end

put_account_setting_1_patch = @patch function put_account_setting(a...; b...)
    return Dict{String,Any}("setting" => Dict{String,Any}("name" => "serviceLongArnFormat","value" => "enabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName"))
end

put_account_setting_2_patch = @patch function put_account_setting(a...; b...)
    return Dict{String,Any}("setting" => Dict{String,Any}("name" => "containerInstanceLongArnFormat","value" => "enabled","principalArn" => "arn:aws:iam::<aws_account_id>:user/principalName"))
end

put_account_setting_default_1_patch = @patch function put_account_setting_default(a...; b...)
    return Dict{String,Any}("setting" => Dict{String,Any}("name" => "serviceLongArnFormat","value" => "enabled","principalArn" => "arn:aws:iam::<aws_account_id>:root"))
end

register_task_definition_1_patch = @patch function register_task_definition(a...; b...)
    return Dict{String,Any}("taskDefinition" => Dict{String,Any}("containerDefinitions" => Any[Dict{String,Any}("essential" => true,"name" => "sleep","cpu" => 10,"image" => "busybox","mountPoints" => Any[],"command" => Any["sleep", "360"],"portMappings" => Any[],"memory" => 10,"environment" => Any[],"volumesFrom" => Any[])],"family" => "sleep360","revision" => 1,"taskDefinitionArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:19","volumes" => Any[]))
end

run_task_1_patch = @patch function run_task(a...; b...)
    return Dict{String,Any}("tasks" => Any[Dict{String,Any}("overrides" => Dict{String,Any}("containerOverrides" => Any[Dict{String,Any}("name" => "sleep")]),"desiredStatus" => "RUNNING","taskDefinitionArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1","lastStatus" => "PENDING","taskArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0","containerInstanceArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/ffe3d344-77e2-476c-a4d0-bf560ad50acb","containers" => Any[Dict{String,Any}("name" => "sleep","lastStatus" => "PENDING","taskArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0","containerArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:container/58591c8e-be29-4ddf-95aa-ee459d4c59fd")])])
end

tag_resource_1_patch = @patch function tag_resource(a...; b...)
    return Dict{String,Any}()
end

untag_resource_1_patch = @patch function untag_resource(a...; b...)
    return Dict{String,Any}()
end

update_service_1_patch = @patch function update_service(a...; b...)
    return Dict{String,Any}()
end

update_service_2_patch = @patch function update_service(a...; b...)
    return Dict{String,Any}()
end

