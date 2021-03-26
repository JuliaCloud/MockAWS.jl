using Mocking

check_dnsavailability_1_patch = @patch function check_dnsavailability(a...; b...)
    return Dict{String, Any}("Available" => true, "FullyQualifiedCNAME" => "my-cname.us-west-2.elasticbeanstalk.com")
end

create_application_1_patch = @patch function create_application(a...; b...)
    return Dict{String, Any}("Application" => Dict{String, Any}("DateCreated" => "2015-02-12T18:32:21.181Z", "DateUpdated" => "2015-02-12T18:32:21.181Z", "Description" => "my application", "ApplicationName" => "my-app", "ConfigurationTemplates" => Any[]))
end

create_application_version_1_patch = @patch function create_application_version(a...; b...)
    return Dict{String, Any}("ApplicationVersion" => Dict{String, Any}("SourceBundle" => Dict{String, Any}("S3Key" => "sample.war", "S3Bucket" => "my-bucket"), "DateCreated" => "2015-02-03T23:01:25.412Z", "DateUpdated" => "2015-02-03T23:01:25.412Z", "Description" => "my-app-v1", "VersionLabel" => "v1", "ApplicationName" => "my-app"))
end

create_configuration_template_1_patch = @patch function create_configuration_template(a...; b...)
    return Dict{String, Any}("TemplateName" => "my-app-v1", "DateCreated" => "2015-08-12T18:40:39Z", "DateUpdated" => "2015-08-12T18:40:39Z", "ApplicationName" => "my-app", "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8")
end

create_environment_1_patch = @patch function create_environment(a...; b...)
    return Dict{String, Any}("DateCreated" => "2015-02-03T23:04:54.479Z", "VersionLabel" => "v1", "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", "DateUpdated" => "2015-02-03T23:04:54.479Z", "Status" => "Launching", "Tier" => Dict{String, Any}("Type" => "Standard", "Version" => " ", "Name" => "WebServer"), "EnvironmentName" => "my-env", "CNAME" => "my-app.elasticbeanstalk.com", "Health" => "Grey", "ApplicationName" => "my-app", "EnvironmentId" => "e-izqpassy4h")
end

create_storage_location_1_patch = @patch function create_storage_location(a...; b...)
    return Dict{String, Any}("S3Bucket" => "elasticbeanstalk-us-west-2-0123456789012")
end

describe_application_versions_1_patch = @patch function describe_application_versions(a...; b...)
    return Dict{String, Any}("ApplicationVersions" => Any[Dict{String, Any}("SourceBundle" => Dict{String, Any}("S3Key" => "my-app/5026-stage-150723_224258.war", "S3Bucket" => "elasticbeanstalk-us-west-2-015321684451"), "DateCreated" => "2015-07-23T01:32:26.079Z", "DateUpdated" => "2015-07-23T01:32:26.079Z", "Description" => "update cover page", "VersionLabel" => "v2", "ApplicationName" => "my-app"), Dict{String, Any}("SourceBundle" => Dict{String, Any}("S3Key" => "my-app/5026-stage-150723_222618.war", "S3Bucket" => "elasticbeanstalk-us-west-2-015321684451"), "DateCreated" => "2015-07-23T22:26:10.816Z", "DateUpdated" => "2015-07-23T22:26:10.816Z", "Description" => "initial version", "VersionLabel" => "v1", "ApplicationName" => "my-app")])
end

describe_applications_1_patch = @patch function describe_applications(a...; b...)
    return Dict{String, Any}("Applications" => Any[Dict{String, Any}("Versions" => Any["Sample Application"], "DateCreated" => "2015-08-13T21:05:44.376Z", "DateUpdated" => "2015-08-13T21:05:44.376Z", "ApplicationName" => "ruby", "ConfigurationTemplates" => Any[]), Dict{String, Any}("Versions" => Any["Sample Application"], "DateCreated" => "2015-08-13T19:05:43.637Z", "DateUpdated" => "2015-08-13T19:05:43.637Z", "Description" => "Application created from the EB CLI using \"eb init\"", "ApplicationName" => "pythonsample", "ConfigurationTemplates" => Any[]), Dict{String, Any}("Versions" => Any["add elasticache", "First Release"], "DateCreated" => "2015-08-06T17:50:02.486Z", "DateUpdated" => "2015-08-06T17:50:02.486Z", "ApplicationName" => "nodejs-example", "ConfigurationTemplates" => Any[])])
end

describe_configuration_options_1_patch = @patch function describe_configuration_options(a...; b...)
    return Dict{String, Any}("Options" => Any[Dict{String, Any}("DefaultValue" => "30", "MaxValue" => 300, "ValueType" => "Scalar", "MinValue" => 5, "Namespace" => "aws:elb:healthcheck", "Name" => "Interval", "ChangeSeverity" => "NoInterruption", "UserDefined" => false), Dict{String, Any}("DefaultValue" => "2000000", "ValueType" => "Scalar", "MinValue" => 0, "Namespace" => "aws:autoscaling:trigger", "Name" => "LowerThreshold", "ChangeSeverity" => "NoInterruption", "UserDefined" => false)])
end

describe_configuration_settings_1_patch = @patch function describe_configuration_settings(a...; b...)
    return Dict{String, Any}("ConfigurationSettings" => Any[Dict{String, Any}("OptionSettings" => Any[Dict{String, Any}("Value" => "Any", "ResourceName" => "AWSEBAutoScalingGroup", "OptionName" => "Availability Zones", "Namespace" => "aws:autoscaling:asg"), Dict{String, Any}("Value" => "360", "ResourceName" => "AWSEBAutoScalingGroup", "OptionName" => "Cooldown", "Namespace" => "aws:autoscaling:asg"), Dict{String, Any}("Value" => "20", "ResourceName" => "AWSEBLoadBalancer", "OptionName" => "ConnectionDrainingTimeout", "Namespace" => "aws:elb:policies"), Dict{String, Any}("Value" => "60", "ResourceName" => "AWSEBLoadBalancer", "OptionName" => "ConnectionSettingIdleTimeout", "Namespace" => "aws:elb:policies")], "DateCreated" => "2015-08-13T19:16:25Z", "DateUpdated" => "2015-08-13T23:30:07Z", "Description" => "Environment created from the EB CLI using \"eb create\"", "DeploymentStatus" => "deployed", "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", "ApplicationName" => "my-app", "EnvironmentName" => "my-env")])
end

describe_environment_health_1_patch = @patch function describe_environment_health(a...; b...)
    return Dict{String, Any}("EnvironmentName" => "my-env", "InstancesHealth" => Dict{String, Any}("Pending" => 0, "NoData" => 0, "Degraded" => 0, "Severe" => 0, "Ok" => 1, "Info" => 0, "Unknown" => 0, "Warning" => 0), "HealthStatus" => "Ok", "ApplicationMetrics" => Dict{String, Any}("Latency" => Dict{String, Any}("P90" => 0.003, "P50" => 0.001, "P95" => 0.004, "P75" => 0.002, "P85" => 0.003, "P99" => 0.004, "P999" => 0.004, "P10" => 0.001), "RequestCount" => 45, "Duration" => 10, "StatusCodes" => Dict{String, Any}("Status3xx" => 0, "Status4xx" => 0, "Status2xx" => 45, "Status5xx" => 0)), "RefreshedAt" => "2015-08-20T21:09:18Z", "Causes" => Any[], "Color" => "Green")
end

describe_environment_resources_1_patch = @patch function describe_environment_resources(a...; b...)
    return Dict{String, Any}("EnvironmentResources" => Dict{String, Any}("AutoScalingGroups" => Any[Dict{String, Any}("Name" => "awseb-e-qu3fyyjyjs-stack-AWSEBAutoScalingGroup-QSB2ZO88SXZT")], "Instances" => Any[Dict{String, Any}("Id" => "i-0c91c786")], "LaunchConfigurations" => Any[Dict{String, Any}("Name" => "awseb-e-qu3fyyjyjs-stack-AWSEBAutoScalingLaunchConfiguration-1UUVQIBC96TQ2")], "Queues" => Any[], "Triggers" => Any[], "LoadBalancers" => Any[Dict{String, Any}("Name" => "awseb-e-q-AWSEBLoa-1EEPZ0K98BIF0")], "EnvironmentName" => "my-env"))
end

describe_environments_1_patch = @patch function describe_environments(a...; b...)
    return Dict{String, Any}("Environments" => Any[Dict{String, Any}("DateCreated" => "2015-08-07T20:48:49.599Z", "AbortableOperationInProgress" => false, "VersionLabel" => "7f58-stage-150812_025409", "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", "EndpointURL" => "awseb-e-w-AWSEBLoa-1483140XB0Q4L-109QXY8121.us-west-2.elb.amazonaws.com", "DateUpdated" => "2015-08-12T18:16:55.019Z", "Status" => "Ready", "Tier" => Dict{String, Any}("Type" => "Standard", "Version" => " ", "Name" => "WebServer"), "EnvironmentName" => "my-env", "CNAME" => "my-env.elasticbeanstalk.com", "Health" => "Green", "ApplicationName" => "my-app", "EnvironmentId" => "e-rpqsewtp2j")])
end

describe_events_1_patch = @patch function describe_events(a...; b...)
    return Dict{String, Any}("Events" => Any[Dict{String, Any}("EventDate" => "2015-08-20T07:06:53.535Z", "Message" => "Environment health has transitioned from Info to Ok.", "ApplicationName" => "my-app", "Severity" => "INFO", "EnvironmentName" => "my-env"), Dict{String, Any}("EventDate" => "2015-08-20T07:06:02.049Z", "Message" => "Environment update completed successfully.", "ApplicationName" => "my-app", "Severity" => "INFO", "RequestId" => "b7f3960b-4709-11e5-ba1e-07e16200da41", "EnvironmentName" => "my-env"), Dict{String, Any}("EventDate" => "2015-08-13T19:16:27.561Z", "Message" => "Using elasticbeanstalk-us-west-2-012445113685 as Amazon S3 storage bucket for environment data.", "ApplicationName" => "my-app", "Severity" => "INFO", "RequestId" => "ca8dfbf6-41ef-11e5-988b-651aa638f46b", "EnvironmentName" => "my-env"), Dict{String, Any}("EventDate" => "2015-08-13T19:16:26.581Z", "Message" => "createEnvironment is starting.", "ApplicationName" => "my-app", "Severity" => "INFO", "RequestId" => "cdfba8f6-41ef-11e5-988b-65638f41aa6b", "EnvironmentName" => "my-env")])
end

describe_instances_health_1_patch = @patch function describe_instances_health(a...; b...)
    return Dict{String, Any}("InstanceHealthList" => Any[Dict{String, Any}("System" => Dict{String, Any}("LoadAverage" => Any[0, 0.02, 0.05], "CPUUtilization" => Dict{String, Any}("IOWait" => 0.2, "System" => 0.3, "User" => 1.5, "Nice" => 0.1, "Idle" => 97.8, "IRQ" => 0, "SoftIRQ" => 0.1)), "HealthStatus" => "Ok", "InstanceId" => "i-08691cc7", "LaunchedAt" => "2015-08-13T19:17:09Z", "ApplicationMetrics" => Dict{String, Any}("Latency" => Dict{String, Any}("P90" => 0.004, "P50" => 0.001, "P95" => 0.005, "P75" => 0.002, "P85" => 0.003, "P99" => 0.006, "P999" => 0.006, "P10" => 0), "RequestCount" => 48, "Duration" => 10, "StatusCodes" => Dict{String, Any}("Status3xx" => 0, "Status4xx" => 1, "Status2xx" => 47, "Status5xx" => 0)), "Causes" => Any[], "Color" => "Green")], "RefreshedAt" => "2015-08-20T21:09:08Z")
end

list_available_solution_stacks_1_patch = @patch function list_available_solution_stacks(a...; b...)
    return Dict{String, Any}("SolutionStackDetails" => Any[Dict{String, Any}("PermittedFileTypes" => Any["zip"], "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Node.js")], "SolutionStacks" => Any["64bit Amazon Linux 2015.03 v2.0.0 running Node.js", "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.6", "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.5", "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.4", "64bit Amazon Linux 2015.03 v2.0.0 running Python 3.4", "64bit Amazon Linux 2015.03 v2.0.0 running Python 2.7", "64bit Amazon Linux 2015.03 v2.0.0 running Python", "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.2 (Puma)", "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.2 (Passenger Standalone)", "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.1 (Puma)", "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.1 (Passenger Standalone)", "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.0 (Puma)", "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.0 (Passenger Standalone)", "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 1.9.3", "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 7 Java 7", "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 7 Java 6", "64bit Windows Server Core 2012 R2 running IIS 8.5", "64bit Windows Server 2012 R2 running IIS 8.5", "64bit Windows Server 2012 running IIS 8", "64bit Windows Server 2008 R2 running IIS 7.5", "64bit Amazon Linux 2015.03 v2.0.0 running Docker 1.6.2", "64bit Amazon Linux 2015.03 v2.0.0 running Multi-container Docker 1.6.2 (Generic)", "64bit Debian jessie v2.0.0 running GlassFish 4.1 Java 8 (Preconfigured - Docker)", "64bit Debian jessie v2.0.0 running GlassFish 4.0 Java 7 (Preconfigured - Docker)", "64bit Debian jessie v2.0.0 running Go 1.4 (Preconfigured - Docker)", "64bit Debian jessie v2.0.0 running Go 1.3 (Preconfigured - Docker)", "64bit Debian jessie v2.0.0 running Python 3.4 (Preconfigured - Docker)"])
end

retrieve_environment_info_1_patch = @patch function retrieve_environment_info(a...; b...)
    return Dict{String, Any}("EnvironmentInfo" => Any[Dict{String, Any}("SampleTimestamp" => "2015-08-20T22:23:17.703Z", "InfoType" => "tail", "Message" => "https://elasticbeanstalk-us-west-2-0123456789012.s3.amazonaws.com/resources/environments/logs/tail/e-fyqyju3yjs/i-09c1c867/TailLogs-1440109397703.out?AWSAccessKeyId=AKGPT4J56IAJ2EUBL5CQ&Expires=1440195891&Signature=n%2BEalOV6A2HIOx4Rcfb7LT16bBM%3D", "Ec2InstanceId" => "i-09c1c867")])
end

terminate_environment_1_patch = @patch function terminate_environment(a...; b...)
    return Dict{String, Any}("DateCreated" => "2015-08-12T18:52:53.622Z", "AbortableOperationInProgress" => false, "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", "EndpointURL" => "awseb-e-f-AWSEBLoa-1I9XUMP4-8492WNUP202574.us-west-2.elb.amazonaws.com", "DateUpdated" => "2015-08-12T19:05:54.744Z", "Status" => "Terminating", "Tier" => Dict{String, Any}("Type" => "Standard", "Version" => " ", "Name" => "WebServer"), "EnvironmentName" => "my-env", "CNAME" => "my-env.elasticbeanstalk.com", "Health" => "Grey", "ApplicationName" => "my-app", "EnvironmentId" => "e-fh2eravpns")
end

update_application_1_patch = @patch function update_application(a...; b...)
    return Dict{String, Any}("Application" => Dict{String, Any}("Versions" => Any["2fba-stage-150819_234450", "bf07-stage-150820_214945", "93f8", "fd7c-stage-150820_000431", "22a0-stage-150819_185942"], "DateCreated" => "2015-08-13T19:15:50.449Z", "DateUpdated" => "2015-08-20T22:34:56.195Z", "Description" => "my Elastic Beanstalk application", "ApplicationName" => "my-app", "ConfigurationTemplates" => Any[]))
end

update_application_version_1_patch = @patch function update_application_version(a...; b...)
    return Dict{String, Any}("ApplicationVersion" => Dict{String, Any}("SourceBundle" => Dict{String, Any}("S3Key" => "my-app/22a0-stage-150819_185942.war", "S3Bucket" => "elasticbeanstalk-us-west-2-0123456789012"), "DateCreated" => "2015-08-19T18:59:17.646Z", "DateUpdated" => "2015-08-20T22:53:28.871Z", "Description" => "new description", "VersionLabel" => "22a0-stage-150819_185942", "ApplicationName" => "my-app"))
end

update_configuration_template_1_patch = @patch function update_configuration_template(a...; b...)
    return Dict{String, Any}("TemplateName" => "my-template", "DateCreated" => "2015-08-20T22:39:31Z", "DateUpdated" => "2015-08-20T22:43:11Z", "ApplicationName" => "my-app", "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8")
end

update_environment_1_patch = @patch function update_environment(a...; b...)
    return Dict{String, Any}("DateCreated" => "2015-02-03T23:04:54.453Z", "VersionLabel" => "v2", "SolutionStackName" => "64bit Amazon Linux running Tomcat 7", "EndpointURL" => "awseb-e-i-AWSEBLoa-1RDLX6TC9VUAO-0123456789.us-west-2.elb.amazonaws.com", "DateUpdated" => "2015-02-03T23:12:29.119Z", "Status" => "Updating", "Tier" => Dict{String, Any}("Type" => "Standard", "Version" => " ", "Name" => "WebServer"), "EnvironmentName" => "my-env", "CNAME" => "my-env.elasticbeanstalk.com", "Health" => "Grey", "ApplicationName" => "my-app", "EnvironmentId" => "e-szqipays4h")
end

update_environment_2_patch = @patch function update_environment(a...; b...)
    return Dict{String, Any}("DateCreated" => "2015-08-07T20:48:49.599Z", "AbortableOperationInProgress" => true, "VersionLabel" => "7f58-stage-150812_025409", "SolutionStackName" => "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8", "EndpointURL" => "awseb-e-w-AWSEBLoa-14XB83101Q4L-104QXY80921.sa-east-1.elb.amazonaws.com", "DateUpdated" => "2015-08-12T18:15:23.804Z", "Status" => "Updating", "Tier" => Dict{String, Any}("Type" => "Standard", "Version" => " ", "Name" => "WebServer"), "EnvironmentName" => "my-env", "CNAME" => "my-env.elasticbeanstalk.com", "Health" => "Grey", "ApplicationName" => "my-app", "EnvironmentId" => "e-wtp2rpqsej")
end

validate_configuration_settings_1_patch = @patch function validate_configuration_settings(a...; b...)
    return Dict{String, Any}("Messages" => Any[])
end

