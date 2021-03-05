# MockAWS.jl
Mocking Framework for AWS.jl

## Overview
This package generates patch functions for all AWS services which define them in the [aws-sdk-js](https://github.com/aws/aws-sdk-js/tree/master/apis) repository.
It is meant to provide means of testing AWS service functionality without needing to actually generate resources.

## Usages
Patches are only available to [high-level](https://github.com/JuliaCloud/AWS.jl/tree/master/src/services) AWS.jl definitions, and are limited to only services which AWS themselves have defined example outputs.

To use this package you must first must define the high-level AWS service, then attach the patches to the module.
**NOTE:** When applying patches, you must use the same name as you used when defining the AWS.jl high-level service module.

```julia
using AWS
using MockAWS
using Mocking

Mocking.activate()

@service S3
@patches S3

apply(S3.get_object_1_patch) do
  @mock S3.get_object("bucket", "key")
end

Dict{String,Any} with 8 entries:
  "ETag"          => "\"6805f2cfc46c0f04559748bb039d69ae\""
  "LastModified"  => "Thu, 15 Dec 2016 01:19:41 GMT"
  "ContentLength" => "3191"
  "Metadata"      => Dict{String,Any}()
  "AcceptRanges"  => "bytes"
  "VersionId"     => "null"
  "ContentType"   => "image/jpeg"
  "TagCount"      => 2
```

## License
[MIT](LICENSE)
