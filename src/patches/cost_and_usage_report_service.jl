using Mocking

describe_report_definitions_1_patch = @patch function describe_report_definitions(a...; b...)
    return Dict{String, Any}("ReportDefinitions" => Any[Dict{String, Any}("Format" => "textORcsv", "AdditionalArtifacts" => Any["QUICKSIGHT"], "ReportName" => "ExampleReport", "AdditionalSchemaElements" => Any["RESOURCES"], "Compression" => "GZIP", "S3Region" => "us-east-1", "TimeUnit" => "HOURLY", "S3Prefix" => "exampleprefix", "S3Bucket" => "example-s3-bucket"), Dict{String, Any}("Format" => "textORcsv", "AdditionalArtifacts" => Any["QUICKSIGHT"], "ReportName" => "ExampleReport2", "AdditionalSchemaElements" => Any["RESOURCES"], "Compression" => "GZIP", "S3Region" => "us-east-1", "TimeUnit" => "HOURLY", "S3Prefix" => "exampleprefix", "S3Bucket" => "example-s3-bucket")])
end

