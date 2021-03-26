using Mocking

add_attributes_to_findings_1_patch = @patch function add_attributes_to_findings(a...; b...)
    return Dict{String, Any}("failedItems" => Dict{String, Any}())
end

create_assessment_target_1_patch = @patch function create_assessment_target(a...; b...)
    return Dict{String, Any}("assessmentTargetArn" => "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX")
end

create_assessment_template_1_patch = @patch function create_assessment_template(a...; b...)
    return Dict{String, Any}("assessmentTemplateArn" => "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T")
end

create_resource_group_1_patch = @patch function create_resource_group(a...; b...)
    return Dict{String, Any}("resourceGroupArn" => "arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-AB6DMKnv")
end

describe_assessment_runs_1_patch = @patch function describe_assessment_runs(a...; b...)
    return Dict{String, Any}("failedItems" => Dict{String, Any}(), "assessmentRuns" => Any[Dict{String, Any}("findingCounts" => Dict{String, Any}("Low" => 0, "Medium" => 2, "Informational" => 0, "High" => 14, "Undefined" => 0), "assessmentTemplateArn" => "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw", "createdAt" => "1458680170.035", "state" => "COMPLETED", "name" => "Run 1 for ExampleAssessmentTemplate", "dataCollected" => true, "arn" => "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE", "completedAt" => "1458680301.4", "durationInSeconds" => 3600, "stateChanges" => Any[Dict{String, Any}("stateChangedAt" => "1458680170.035", "state" => "CREATED"), Dict{String, Any}("stateChangedAt" => "1458680170.065", "state" => "START_DATA_COLLECTION_PENDING"), Dict{String, Any}("stateChangedAt" => "1458680170.096", "state" => "START_DATA_COLLECTION_IN_PROGRESS"), Dict{String, Any}("stateChangedAt" => "1458680170.161", "state" => "COLLECTING_DATA"), Dict{String, Any}("stateChangedAt" => "1458680239.883", "state" => "STOP_DATA_COLLECTION_PENDING"), Dict{String, Any}("stateChangedAt" => "1458680299.847", "state" => "DATA_COLLECTED"), Dict{String, Any}("stateChangedAt" => "1458680300.099", "state" => "EVALUATING_RULES"), Dict{String, Any}("stateChangedAt" => "1458680301.4", "state" => "COMPLETED")], "notifications" => Any[], "rulesPackageArns" => Any["arn:aws:inspector:us-west-2:758058086616:rulespackage/0-X1KXtawP"], "startedAt" => "1458680170.161", "userAttributesForFindings" => Any[], "stateChangedAt" => "1458680301.4")])
end

describe_assessment_targets_1_patch = @patch function describe_assessment_targets(a...; b...)
    return Dict{String, Any}("failedItems" => Dict{String, Any}(), "assessmentTargets" => Any[Dict{String, Any}("name" => "ExampleAssessmentTarget", "updatedAt" => "1458074191.459", "createdAt" => "1458074191.459", "arn" => "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq", "resourceGroupArn" => "arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-PyGXopAI")])
end

describe_assessment_templates_1_patch = @patch function describe_assessment_templates(a...; b...)
    return Dict{String, Any}("assessmentTemplates" => Any[Dict{String, Any}("rulesPackageArns" => Any["arn:aws:inspector:us-west-2:758058086616:rulespackage/0-X1KXtawP"], "name" => "ExampleAssessmentTemplate", "userAttributesForFindings" => Any[], "durationInSeconds" => 3600, "assessmentRunCount" => 0, "createdAt" => "1458074191.844", "arn" => "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw", "assessmentTargetArn" => "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq")], "failedItems" => Dict{String, Any}())
end

describe_cross_account_access_role_1_patch = @patch function describe_cross_account_access_role(a...; b...)
    return Dict{String, Any}("roleArn" => "arn:aws:iam::123456789012:role/inspector", "valid" => true, "registeredAt" => "1458069182.826")
end

describe_findings_1_patch = @patch function describe_findings(a...; b...)
    return Dict{String, Any}("failedItems" => Dict{String, Any}(), "findings" => Any[Dict{String, Any}("indicatorOfCompromise" => false, "recommendation" => "No remediation needed.", "schemaVersion" => 1, "createdAt" => "1458680301.37", "confidence" => 10, "service" => "Inspector", "description" => "Amazon Inspector did not find any potential security issues during this assessment.", "assetAttributes" => Dict{String, Any}("ipv4Addresses" => Any[], "schemaVersion" => 1), "arn" => "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE/finding/0-HwPnsDm4", "serviceAttributes" => Dict{String, Any}("assessmentRunArn" => "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE", "rulesPackageArn" => "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-X1KXtawP", "schemaVersion" => 1), "severity" => "Informational", "updatedAt" => "1458680301.37", "userAttributes" => Any[], "numericSeverity" => 0, "assetType" => "ec2-instance", "attributes" => Any[], "title" => "No potential security issues found")])
end

describe_resource_groups_1_patch = @patch function describe_resource_groups(a...; b...)
    return Dict{String, Any}("failedItems" => Dict{String, Any}(), "resourceGroups" => Any[Dict{String, Any}("tags" => Any[Dict{String, Any}("key" => "Name", "value" => "example")], "createdAt" => "1458074191.098", "arn" => "arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-PyGXopAI")])
end

describe_rules_packages_1_patch = @patch function describe_rules_packages(a...; b...)
    return Dict{String, Any}("rulesPackages" => Any[Dict{String, Any}("name" => "Security Best Practices", "provider" => "Amazon Web Services, Inc.", "version" => "1.1", "arn" => "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ", "description" => "The rules in this package help determine whether your systems are configured securely.")], "failedItems" => Dict{String, Any}())
end

get_telemetry_metadata_1_patch = @patch function get_telemetry_metadata(a...; b...)
    return Dict{String, Any}("telemetryMetadata" => Any[Dict{String, Any}("dataSize" => 345, "count" => 2, "messageType" => "InspectorDuplicateProcess"), Dict{String, Any}("dataSize" => 255, "count" => 3, "messageType" => "InspectorTimeEventMsg"), Dict{String, Any}("dataSize" => 1082, "count" => 4, "messageType" => "InspectorNetworkInterface"), Dict{String, Any}("dataSize" => 349, "count" => 2, "messageType" => "InspectorDnsEntry"), Dict{String, Any}("dataSize" => 2514, "count" => 11, "messageType" => "InspectorDirectoryInfoMsg"), Dict{String, Any}("dataSize" => 179, "count" => 1, "messageType" => "InspectorTcpV6ListeningPort"), Dict{String, Any}("dataSize" => 10949, "count" => 101, "messageType" => "InspectorTerminal"), Dict{String, Any}("dataSize" => 5916, "count" => 26, "messageType" => "InspectorUser"), Dict{String, Any}("dataSize" => 32148, "count" => 282, "messageType" => "InspectorDynamicallyLoadedCodeModule"), Dict{String, Any}("dataSize" => 10172, "count" => 18, "messageType" => "InspectorCreateProcess"), Dict{String, Any}("dataSize" => 8001, "count" => 3, "messageType" => "InspectorProcessPerformance"), Dict{String, Any}("dataSize" => 360, "count" => 1, "messageType" => "InspectorOperatingSystem"), Dict{String, Any}("dataSize" => 546, "count" => 6, "messageType" => "InspectorStopProcess"), Dict{String, Any}("dataSize" => 1553, "count" => 1, "messageType" => "InspectorInstanceMetaData"), Dict{String, Any}("dataSize" => 434, "count" => 2, "messageType" => "InspectorTcpV4Connection"), Dict{String, Any}("dataSize" => 2960322, "count" => 474, "messageType" => "InspectorPackageInfo"), Dict{String, Any}("dataSize" => 2235, "count" => 3, "messageType" => "InspectorSystemPerformance"), Dict{String, Any}("dataSize" => 46048, "count" => 105, "messageType" => "InspectorCodeModule"), Dict{String, Any}("dataSize" => 182, "count" => 1, "messageType" => "InspectorUdpV6ListeningPort"), Dict{String, Any}("dataSize" => 371, "count" => 2, "messageType" => "InspectorUdpV4ListeningPort"), Dict{String, Any}("dataSize" => 8362, "count" => 18, "messageType" => "InspectorKernelModule"), Dict{String, Any}("dataSize" => 48788, "count" => 29, "messageType" => "InspectorConfigurationInfo"), Dict{String, Any}("dataSize" => 79, "count" => 1, "messageType" => "InspectorMonitoringStart"), Dict{String, Any}("dataSize" => 0, "count" => 5, "messageType" => "InspectorSplitMsgBegin"), Dict{String, Any}("dataSize" => 4593, "count" => 51, "messageType" => "InspectorGroup"), Dict{String, Any}("dataSize" => 184, "count" => 1, "messageType" => "InspectorTcpV4ListeningPort"), Dict{String, Any}("dataSize" => 3146579, "count" => 1159, "messageType" => "Total"), Dict{String, Any}("dataSize" => 0, "count" => 5, "messageType" => "InspectorSplitMsgEnd"), Dict{String, Any}("dataSize" => 612, "count" => 1, "messageType" => "InspectorLoadImageInProcess")])
end

list_assessment_run_agents_1_patch = @patch function list_assessment_run_agents(a...; b...)
    return Dict{String, Any}("assessmentRunAgents" => Any[Dict{String, Any}("assessmentRunArn" => "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE", "agentHealth" => "HEALTHY", "telemetryMetadata" => Any[Dict{String, Any}("dataSize" => 345, "count" => 2, "messageType" => "InspectorDuplicateProcess"), Dict{String, Any}("dataSize" => 255, "count" => 3, "messageType" => "InspectorTimeEventMsg"), Dict{String, Any}("dataSize" => 1082, "count" => 4, "messageType" => "InspectorNetworkInterface"), Dict{String, Any}("dataSize" => 349, "count" => 2, "messageType" => "InspectorDnsEntry"), Dict{String, Any}("dataSize" => 2514, "count" => 11, "messageType" => "InspectorDirectoryInfoMsg"), Dict{String, Any}("dataSize" => 179, "count" => 1, "messageType" => "InspectorTcpV6ListeningPort"), Dict{String, Any}("dataSize" => 10949, "count" => 101, "messageType" => "InspectorTerminal"), Dict{String, Any}("dataSize" => 5916, "count" => 26, "messageType" => "InspectorUser"), Dict{String, Any}("dataSize" => 32148, "count" => 282, "messageType" => "InspectorDynamicallyLoadedCodeModule"), Dict{String, Any}("dataSize" => 10172, "count" => 18, "messageType" => "InspectorCreateProcess"), Dict{String, Any}("dataSize" => 8001, "count" => 3, "messageType" => "InspectorProcessPerformance"), Dict{String, Any}("dataSize" => 360, "count" => 1, "messageType" => "InspectorOperatingSystem"), Dict{String, Any}("dataSize" => 546, "count" => 6, "messageType" => "InspectorStopProcess"), Dict{String, Any}("dataSize" => 1553, "count" => 1, "messageType" => "InspectorInstanceMetaData"), Dict{String, Any}("dataSize" => 434, "count" => 2, "messageType" => "InspectorTcpV4Connection"), Dict{String, Any}("dataSize" => 2960322, "count" => 474, "messageType" => "InspectorPackageInfo"), Dict{String, Any}("dataSize" => 2235, "count" => 3, "messageType" => "InspectorSystemPerformance"), Dict{String, Any}("dataSize" => 46048, "count" => 105, "messageType" => "InspectorCodeModule"), Dict{String, Any}("dataSize" => 182, "count" => 1, "messageType" => "InspectorUdpV6ListeningPort"), Dict{String, Any}("dataSize" => 371, "count" => 2, "messageType" => "InspectorUdpV4ListeningPort"), Dict{String, Any}("dataSize" => 8362, "count" => 18, "messageType" => "InspectorKernelModule"), Dict{String, Any}("dataSize" => 48788, "count" => 29, "messageType" => "InspectorConfigurationInfo"), Dict{String, Any}("dataSize" => 79, "count" => 1, "messageType" => "InspectorMonitoringStart"), Dict{String, Any}("dataSize" => 0, "count" => 5, "messageType" => "InspectorSplitMsgBegin"), Dict{String, Any}("dataSize" => 4593, "count" => 51, "messageType" => "InspectorGroup"), Dict{String, Any}("dataSize" => 184, "count" => 1, "messageType" => "InspectorTcpV4ListeningPort"), Dict{String, Any}("dataSize" => 3146579, "count" => 1159, "messageType" => "Total"), Dict{String, Any}("dataSize" => 0, "count" => 5, "messageType" => "InspectorSplitMsgEnd"), Dict{String, Any}("dataSize" => 612, "count" => 1, "messageType" => "InspectorLoadImageInProcess")], "agentHealthCode" => "RUNNING", "agentId" => "i-49113b93")], "nextToken" => "1")
end

list_assessment_runs_1_patch = @patch function list_assessment_runs(a...; b...)
    return Dict{String, Any}("assessmentRunArns" => Any["arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE", "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-v5D6fI3v"], "nextToken" => "1")
end

list_assessment_targets_1_patch = @patch function list_assessment_targets(a...; b...)
    return Dict{String, Any}("assessmentTargetArns" => Any["arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"], "nextToken" => "1")
end

list_assessment_templates_1_patch = @patch function list_assessment_templates(a...; b...)
    return Dict{String, Any}("assessmentTemplateArns" => Any["arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw", "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-Uza6ihLh"], "nextToken" => "1")
end

list_event_subscriptions_1_patch = @patch function list_event_subscriptions(a...; b...)
    return Dict{String, Any}("subscriptions" => Any[Dict{String, Any}("resourceArn" => "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-7sbz2Kz0", "eventSubscriptions" => Any[Dict{String, Any}("event" => "ASSESSMENT_RUN_COMPLETED", "subscribedAt" => "1459455440.867")], "topicArn" => "arn:aws:sns:us-west-2:123456789012:exampletopic")], "nextToken" => "1")
end

list_findings_1_patch = @patch function list_findings(a...; b...)
    return Dict{String, Any}("findingArns" => Any["arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE/finding/0-HwPnsDm4", "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-v5D6fI3v/finding/0-tyvmqBLy"], "nextToken" => "1")
end

list_rules_packages_1_patch = @patch function list_rules_packages(a...; b...)
    return Dict{String, Any}("rulesPackageArns" => Any["arn:aws:inspector:us-west-2:758058086616:rulespackage/0-9hgA516p", "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-H5hpSawc", "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ", "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-vg5GGHSD"], "nextToken" => "1")
end

list_tags_for_resource_1_patch = @patch function list_tags_for_resource(a...; b...)
    return Dict{String, Any}("tags" => Any[Dict{String, Any}("key" => "Name", "value" => "Example")])
end

preview_agents_1_patch = @patch function preview_agents(a...; b...)
    return Dict{String, Any}("agentPreviews" => Any[Dict{String, Any}("agentId" => "i-49113b93")], "nextToken" => "1")
end

remove_attributes_from_findings_1_patch = @patch function remove_attributes_from_findings(a...; b...)
    return Dict{String, Any}("failedItems" => Dict{String, Any}())
end

start_assessment_run_1_patch = @patch function start_assessment_run(a...; b...)
    return Dict{String, Any}("assessmentRunArn" => "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T/run/0-jOoroxyY")
end

