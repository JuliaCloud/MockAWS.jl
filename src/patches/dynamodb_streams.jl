using Mocking

describe_stream_1_patch = @patch function describe_stream(a...; b...)
    return Dict{String, Any}("StreamDescription" => Dict{String, Any}("CreationRequestDateTime" => "Wed May 20 13:51:10 PDT 2015", "TableName" => "Forum", "StreamLabel" => "2015-05-20T20:51:10.252", "StreamViewType" => "NEW_AND_OLD_IMAGES", "Shards" => Any[Dict{String, Any}("ShardId" => "shardId-00000001414562045508-2bac9cd2", "SequenceNumberRange" => Dict{String, Any}("StartingSequenceNumber" => "20500000000000000910398", "EndingSequenceNumber" => "20500000000000000910398")), Dict{String, Any}("ShardId" => "shardId-00000001414576573621-f55eea83", "ParentShardId" => "shardId-00000001414562045508-2bac9cd2", "SequenceNumberRange" => Dict{String, Any}("StartingSequenceNumber" => "820400000000000001192334", "EndingSequenceNumber" => "820400000000000001192334")), Dict{String, Any}("ShardId" => "shardId-00000001414592258131-674fd923", "ParentShardId" => "shardId-00000001414576573621-f55eea83", "SequenceNumberRange" => Dict{String, Any}("StartingSequenceNumber" => "1683700000000000001135967", "EndingSequenceNumber" => "1683700000000000001135967")), Dict{String, Any}("ShardId" => "shardId-00000001414608446368-3a1afbaf", "ParentShardId" => "shardId-00000001414592258131-674fd923", "SequenceNumberRange" => Dict{String, Any}("StartingSequenceNumber" => "2574600000000000000935255"))], "StreamArn" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252", "KeySchema" => Any[Dict{String, Any}("AttributeName" => "ForumName", "KeyType" => "HASH"), Dict{String, Any}("AttributeName" => "Subject", "KeyType" => "RANGE")], "StreamStatus" => "ENABLED"))
end

get_records_1_patch = @patch function get_records(a...; b...)
    return Dict{String, Any}("NextShardIterator" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAGQBYshYDEe ... <remaining characters omitted> ...", "Records" => Any[Dict{String, Any}("eventVersion" => "1.0", "eventID" => "e2fd9c34eff2d779b297b26f5fef4206", "eventName" => "INSERT", "awsRegion" => "us-west-2", "eventSource" => "aws:dynamodb", "dynamodb" => Dict{String, Any}("SizeBytes" => 41, "SequenceNumber" => "300000000000000499659", "StreamViewType" => "KEYS_ONLY", "Keys" => Dict{String, Any}("ForumName" => Dict{String, Any}("S" => "DynamoDB"), "Subject" => Dict{String, Any}("S" => "DynamoDB Thread 3")), "ApproximateCreationDateTime" => "1.46480646E9")), Dict{String, Any}("eventVersion" => "1.0", "eventID" => "4b25bd0da9a181a155114127e4837252", "eventName" => "MODIFY", "awsRegion" => "us-west-2", "eventSource" => "aws:dynamodb", "dynamodb" => Dict{String, Any}("SizeBytes" => 41, "SequenceNumber" => "400000000000000499660", "StreamViewType" => "KEYS_ONLY", "Keys" => Dict{String, Any}("ForumName" => Dict{String, Any}("S" => "DynamoDB"), "Subject" => Dict{String, Any}("S" => "DynamoDB Thread 1")), "ApproximateCreationDateTime" => "1.46480527E9")), Dict{String, Any}("eventVersion" => "1.0", "eventID" => "740280c73a3df7842edab3548a1b08ad", "eventName" => "REMOVE", "awsRegion" => "us-west-2", "eventSource" => "aws:dynamodb", "dynamodb" => Dict{String, Any}("SizeBytes" => 41, "SequenceNumber" => "500000000000000499661", "StreamViewType" => "KEYS_ONLY", "Keys" => Dict{String, Any}("ForumName" => Dict{String, Any}("S" => "DynamoDB"), "Subject" => Dict{String, Any}("S" => "DynamoDB Thread 2")), "ApproximateCreationDateTime" => "1.46480646E9"))])
end

get_shard_iterator_1_patch = @patch function get_shard_iterator(a...; b...)
    return Dict{String, Any}("ShardIterator" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAEvJp6D+zaQ...  <remaining characters omitted> ...")
end

list_streams_1_patch = @patch function list_streams(a...; b...)
    return Dict{String, Any}("Streams" => Any[Dict{String, Any}("TableName" => "Forum", "StreamLabel" => "2015-05-20T20:51:10.252", "StreamArn" => "arn:aws:dynamodb:us-wesst-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252"), Dict{String, Any}("TableName" => "Forum", "StreamLabel" => "2015-05-20T20:50:02.714", "StreamArn" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:50:02.714"), Dict{String, Any}("TableName" => "Forum", "StreamLabel" => "2015-05-19T23:03:50.641", "StreamArn" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-19T23:03:50.641")])
end
