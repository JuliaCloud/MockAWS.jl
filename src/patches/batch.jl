using Mocking

cancel_job_1_patch = @patch function cancel_job(a...; b...)
    return Dict{String,Any}()
end

create_compute_environment_1_patch = @patch function create_compute_environment(a...; b...)
    return Dict{String,Any}("computeEnvironmentName" => "C4OnDemand","computeEnvironmentArn" => "arn:aws:batch:us-east-1:012345678910:compute-environment/C4OnDemand")
end

create_compute_environment_2_patch = @patch function create_compute_environment(a...; b...)
    return Dict{String,Any}("computeEnvironmentName" => "M4Spot","computeEnvironmentArn" => "arn:aws:batch:us-east-1:012345678910:compute-environment/M4Spot")
end

create_job_queue_1_patch = @patch function create_job_queue(a...; b...)
    return Dict{String,Any}("jobQueueName" => "LowPriority","jobQueueArn" => "arn:aws:batch:us-east-1:012345678910:job-queue/LowPriority")
end

create_job_queue_2_patch = @patch function create_job_queue(a...; b...)
    return Dict{String,Any}("jobQueueName" => "HighPriority","jobQueueArn" => "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority")
end

delete_compute_environment_1_patch = @patch function delete_compute_environment(a...; b...)
    return Dict{String,Any}()
end

delete_job_queue_1_patch = @patch function delete_job_queue(a...; b...)
    return Dict{String,Any}()
end

deregister_job_definition_1_patch = @patch function deregister_job_definition(a...; b...)
    return Dict{String,Any}()
end

describe_compute_environments_1_patch = @patch function describe_compute_environments(a...; b...)
    return Dict{String,Any}("computeEnvironments" => Any[Dict{String,Any}("state" => "ENABLED","statusReason" => "ComputeEnvironment Healthy","status" => "VALID","computeEnvironmentName" => "P2OnDemand","serviceRole" => "arn:aws:iam::012345678910:role/AWSBatchServiceRole","computeEnvironmentArn" => "arn:aws:batch:us-east-1:012345678910:compute-environment/P2OnDemand","type" => "MANAGED","ecsClusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/P2OnDemand_Batch_2c06f29d-d1fe-3a49-879d-42394c86effc","computeResources" => Dict{String,Any}("instanceTypes" => Any["p2"],"minvCpus" => 0,"subnets" => Any["subnet-220c0e0a", "subnet-1a95556d", "subnet-978f6dce"],"desiredvCpus" => 48,"ec2KeyPair" => "id_rsa","maxvCpus" => 128,"securityGroupIds" => Any["sg-cf5093b2"],"tags" => Dict{String,Any}("Name" => "Batch Instance - P2OnDemand"),"type" => "EC2","instanceRole" => "ecsInstanceRole"))])
end

describe_job_definitions_1_patch = @patch function describe_job_definitions(a...; b...)
    return Dict{String,Any}("jobDefinitions" => Any[Dict{String,Any}("revision" => 1,"status" => "ACTIVE","containerProperties" => Dict{String,Any}("ulimits" => Any[],"volumes" => Any[],"image" => "busybox","mountPoints" => Any[],"command" => Any["sleep", "60"],"memory" => 128,"environment" => Any[],"vcpus" => 1),"jobDefinitionName" => "sleep60","jobDefinitionArn" => "arn:aws:batch:us-east-1:012345678910:job-definition/sleep60:1","type" => "container")])
end

describe_job_queues_1_patch = @patch function describe_job_queues(a...; b...)
    return Dict{String,Any}("jobQueues" => Any[Dict{String,Any}("statusReason" => "JobQueue Healthy","priority" => 1,"status" => "VALID","computeEnvironmentOrder" => Any[Dict{String,Any}("order" => 1,"computeEnvironment" => "arn:aws:batch:us-east-1:012345678910:compute-environment/C4OnDemand")],"jobQueueName" => "HighPriority","jobQueueArn" => "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority","state" => "ENABLED")])
end

describe_jobs_1_patch = @patch function describe_jobs(a...; b...)
    return Dict{String,Any}("jobs" => Any[Dict{String,Any}("createdAt" => 1480460782010,"jobId" => "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9","parameters" => Dict{String,Any}(),"jobDefinition" => "sleep60","status" => "SUCCEEDED","container" => Dict{String,Any}("ulimits" => Any[],"volumes" => Any[],"image" => "busybox","mountPoints" => Any[],"command" => Any["sleep", "60"],"containerInstanceArn" => "arn:aws:ecs:us-east-1:012345678910:container-instance/5406d7cd-58bd-4b8f-9936-48d7c6b1526c","memory" => 128,"environment" => Any[],"vcpus" => 1,"exitCode" => 0),"jobQueue" => "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority","dependsOn" => Any[],"startedAt" => 1480460816500,"jobName" => "example","stoppedAt" => 1480460880699)])
end

list_jobs_1_patch = @patch function list_jobs(a...; b...)
    return Dict{String,Any}("jobSummaryList" => Any[Dict{String,Any}("jobId" => "e66ff5fd-a1ff-4640-b1a2-0b0a142f49bb","jobName" => "example")])
end

list_jobs_2_patch = @patch function list_jobs(a...; b...)
    return Dict{String,Any}("jobSummaryList" => Any[Dict{String,Any}("jobId" => "68f0c163-fbd4-44e6-9fd1-25b14a434786","jobName" => "example")])
end

list_tags_for_resource_1_patch = @patch function list_tags_for_resource(a...; b...)
    return Dict{String,Any}("tags" => Dict{String,Any}("User" => "JaneDoe","Department" => "Engineering","Stage" => "Alpha"))
end

register_job_definition_1_patch = @patch function register_job_definition(a...; b...)
    return Dict{String,Any}("revision" => 1,"jobDefinitionName" => "sleep10","jobDefinitionArn" => "arn:aws:batch:us-east-1:012345678910:job-definition/sleep10:1")
end

register_job_definition_2_patch = @patch function register_job_definition(a...; b...)
    return Dict{String,Any}("revision" => 1,"jobDefinitionName" => "sleep30","jobDefinitionArn" => "arn:aws:batch:us-east-1:012345678910:job-definition/sleep30:1")
end

submit_job_1_patch = @patch function submit_job(a...; b...)
    return Dict{String,Any}("jobId" => "876da822-4198-45f2-a252-6cea32512ea8","jobName" => "example")
end

tag_resource_1_patch = @patch function tag_resource(a...; b...)
    return Dict{String,Any}()
end

terminate_job_1_patch = @patch function terminate_job(a...; b...)
    return Dict{String,Any}()
end

untag_resource_1_patch = @patch function untag_resource(a...; b...)
    return Dict{String,Any}()
end

update_compute_environment_1_patch = @patch function update_compute_environment(a...; b...)
    return Dict{String,Any}("computeEnvironmentName" => "P2OnDemand","computeEnvironmentArn" => "arn:aws:batch:us-east-1:012345678910:compute-environment/P2OnDemand")
end

update_job_queue_1_patch = @patch function update_job_queue(a...; b...)
    return Dict{String,Any}("jobQueueName" => "GPGPU","jobQueueArn" => "arn:aws:batch:us-east-1:012345678910:job-queue/GPGPU")
end

