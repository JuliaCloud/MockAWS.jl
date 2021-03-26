using Mocking

batch_get_item_1_patch = @patch function batch_get_item(a...; b...)
    return Dict{String, Any}("Responses" => Dict{String, Any}("Music" => Any[Dict{String, Any}("AlbumTitle" => Dict{String, Any}("S" => "Somewhat Famous")), Dict{String, Any}("AlbumTitle" => Dict{String, Any}("S" => "Blue Sky Blues")), Dict{String, Any}("AlbumTitle" => Dict{String, Any}("S" => "Louder Than Ever"))]))
end

batch_write_item_1_patch = @patch function batch_write_item(a...; b...)
    return Dict{String, Any}()
end

create_table_1_patch = @patch function create_table(a...; b...)
    return Dict{String, Any}("TableDescription" => Dict{String, Any}("TableSizeBytes" => 0, "AttributeDefinitions" => Any[Dict{String, Any}("AttributeName" => "Artist", "AttributeType" => "S"), Dict{String, Any}("AttributeName" => "SongTitle", "AttributeType" => "S")], "ItemCount" => 0, "TableName" => "Music", "ProvisionedThroughput" => Dict{String, Any}("ReadCapacityUnits" => 5, "WriteCapacityUnits" => 5), "CreationDateTime" => "1421866952.062", "KeySchema" => Any[Dict{String, Any}("AttributeName" => "Artist", "KeyType" => "HASH"), Dict{String, Any}("AttributeName" => "SongTitle", "KeyType" => "RANGE")], "TableStatus" => "CREATING"))
end

delete_item_1_patch = @patch function delete_item(a...; b...)
    return Dict{String, Any}("ConsumedCapacity" => Dict{String, Any}("CapacityUnits" => 1, "TableName" => "Music"))
end

delete_table_1_patch = @patch function delete_table(a...; b...)
    return Dict{String, Any}("TableDescription" => Dict{String, Any}("TableSizeBytes" => 0, "ItemCount" => 0, "TableName" => "Music", "ProvisionedThroughput" => Dict{String, Any}("ReadCapacityUnits" => 5, "NumberOfDecreasesToday" => 1, "WriteCapacityUnits" => 5), "TableStatus" => "DELETING"))
end

describe_limits_1_patch = @patch function describe_limits(a...; b...)
    return Dict{String, Any}("AccountMaxWriteCapacityUnits" => 20000, "TableMaxWriteCapacityUnits" => 10000, "AccountMaxReadCapacityUnits" => 20000, "TableMaxReadCapacityUnits" => 10000)
end

describe_table_1_patch = @patch function describe_table(a...; b...)
    return Dict{String, Any}("Table" => Dict{String, Any}("TableSizeBytes" => 0, "AttributeDefinitions" => Any[Dict{String, Any}("AttributeName" => "Artist", "AttributeType" => "S"), Dict{String, Any}("AttributeName" => "SongTitle", "AttributeType" => "S")], "ItemCount" => 0, "TableName" => "Music", "ProvisionedThroughput" => Dict{String, Any}("ReadCapacityUnits" => 5, "NumberOfDecreasesToday" => 1, "WriteCapacityUnits" => 5), "CreationDateTime" => "1421866952.062", "KeySchema" => Any[Dict{String, Any}("AttributeName" => "Artist", "KeyType" => "HASH"), Dict{String, Any}("AttributeName" => "SongTitle", "KeyType" => "RANGE")], "TableStatus" => "ACTIVE"))
end

get_item_1_patch = @patch function get_item(a...; b...)
    return Dict{String, Any}("Item" => Dict{String, Any}("SongTitle" => Dict{String, Any}("S" => "Happy Day"), "AlbumTitle" => Dict{String, Any}("S" => "Songs About Life"), "Artist" => Dict{String, Any}("S" => "Acme Band")))
end

list_tables_1_patch = @patch function list_tables(a...; b...)
    return Dict{String, Any}("TableNames" => Any["Forum", "ProductCatalog", "Reply", "Thread"])
end

put_item_1_patch = @patch function put_item(a...; b...)
    return Dict{String, Any}("ConsumedCapacity" => Dict{String, Any}("CapacityUnits" => 1, "TableName" => "Music"))
end

query_1_patch = @patch function query(a...; b...)
    return Dict{String, Any}("ScannedCount" => 2, "Items" => Any[Dict{String, Any}("SongTitle" => Dict{String, Any}("S" => "Call Me Today"))], "ConsumedCapacity" => Dict{String, Any}(), "Count" => 2)
end

scan_1_patch = @patch function scan(a...; b...)
    return Dict{String, Any}("ScannedCount" => 3, "Items" => Any[Dict{String, Any}("SongTitle" => Dict{String, Any}("S" => "Call Me Today"), "AlbumTitle" => Dict{String, Any}("S" => "Somewhat Famous")), Dict{String, Any}("SongTitle" => Dict{String, Any}("S" => "Scared of My Shadow"), "AlbumTitle" => Dict{String, Any}("S" => "Blue Sky Blues"))], "ConsumedCapacity" => Dict{String, Any}(), "Count" => 2)
end

update_item_1_patch = @patch function update_item(a...; b...)
    return Dict{String, Any}("Attributes" => Dict{String, Any}("SongTitle" => Dict{String, Any}("S" => "Happy Day"), "AlbumTitle" => Dict{String, Any}("S" => "Louder Than Ever"), "Artist" => Dict{String, Any}("S" => "Acme Band"), "Year" => Dict{String, Any}("N" => "2015")))
end

update_table_1_patch = @patch function update_table(a...; b...)
    return Dict{String, Any}("TableDescription" => Dict{String, Any}("TableSizeBytes" => 0, "AttributeDefinitions" => Any[Dict{String, Any}("AttributeName" => "Artist", "AttributeType" => "S"), Dict{String, Any}("AttributeName" => "SongTitle", "AttributeType" => "S")], "ItemCount" => 0, "TableName" => "MusicCollection", "ProvisionedThroughput" => Dict{String, Any}("ReadCapacityUnits" => 1, "LastIncreaseDateTime" => "1421874759.194", "NumberOfDecreasesToday" => 1, "WriteCapacityUnits" => 1), "CreationDateTime" => "1421866952.062", "KeySchema" => Any[Dict{String, Any}("AttributeName" => "Artist", "KeyType" => "HASH"), Dict{String, Any}("AttributeName" => "SongTitle", "KeyType" => "RANGE")], "TableStatus" => "UPDATING"))
end

