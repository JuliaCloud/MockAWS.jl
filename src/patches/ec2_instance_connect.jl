using Mocking

send_sshpublic_key_1_patch = @patch function send_sshpublic_key(a...; b...)
    return Dict{String, Any}("Success" => true, "RequestId" => "abcd1234-abcd-1234-abcd-1234abcd1234")
end

