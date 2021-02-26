using Mocking

create_ipset_1_patch = @patch function create_ipset(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f","IPSet" => Dict{String,Any}("IPSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MyIPSetFriendlyName","IPSetDescriptors" => Any[Dict{String,Any}("Value" => "192.0.2.44/32","Type" => "IPV4")]))
end

create_rule_1_patch = @patch function create_rule(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f","Rule" => Dict{String,Any}("MetricName" => "WAFByteHeaderRule","Name" => "WAFByteHeaderRule","RuleId" => "WAFRule-1-Example","Predicates" => Any[Dict{String,Any}("Negated" => false,"DataId" => "MyByteMatchSetID","Type" => "ByteMatch")]))
end

create_size_constraint_set_1_patch = @patch function create_size_constraint_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f","SizeConstraintSet" => Dict{String,Any}("SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","SizeConstraints" => Any[Dict{String,Any}("FieldToMatch" => Dict{String,Any}("Type" => "QUERY_STRING"),"TextTransformation" => "NONE","Size" => 0,"ComparisonOperator" => "GT")],"Name" => "MySampleSizeConstraintSet"))
end

create_sql_injection_match_set_1_patch = @patch function create_sql_injection_match_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f","SqlInjectionMatchSet" => Dict{String,Any}("SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MySQLInjectionMatchSet","SqlInjectionMatchTuples" => Any[Dict{String,Any}("FieldToMatch" => Dict{String,Any}("Type" => "QUERY_STRING"),"TextTransformation" => "URL_DECODE")]))
end

create_web_acl_1_patch = @patch function create_web_acl(a...; b...)
    return Dict{String,Any}("WebACL" => Dict{String,Any}("DefaultAction" => Dict{String,Any}("Type" => "ALLOW"),"Rules" => Any[Dict{String,Any}("Priority" => 1,"Action" => Dict{String,Any}("Type" => "ALLOW"),"RuleId" => "WAFRule-1-Example")],"MetricName" => "CreateExample","WebACLId" => "example-46da-4444-5555-example","Name" => "CreateExample"),"ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

create_xss_match_set_1_patch = @patch function create_xss_match_set(a...; b...)
    return Dict{String,Any}("XssMatchSet" => Dict{String,Any}("XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MySampleXssMatchSet","XssMatchTuples" => Any[Dict{String,Any}("FieldToMatch" => Dict{String,Any}("Type" => "QUERY_STRING"),"TextTransformation" => "URL_DECODE")]),"ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

delete_byte_match_set_1_patch = @patch function delete_byte_match_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

delete_ipset_1_patch = @patch function delete_ipset(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

delete_rule_1_patch = @patch function delete_rule(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

delete_size_constraint_set_1_patch = @patch function delete_size_constraint_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

delete_sql_injection_match_set_1_patch = @patch function delete_sql_injection_match_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

delete_web_acl_1_patch = @patch function delete_web_acl(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

delete_xss_match_set_1_patch = @patch function delete_xss_match_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

get_byte_match_set_1_patch = @patch function get_byte_match_set(a...; b...)
    return Dict{String,Any}("ByteMatchSet" => Dict{String,Any}("ByteMatchSetId" => "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5","ByteMatchTuples" => Any[Dict{String,Any}("FieldToMatch" => Dict{String,Any}("Data" => "referer","Type" => "HEADER"),"TextTransformation" => "NONE","TargetString" => "badrefer1","PositionalConstraint" => "CONTAINS")],"Name" => "ByteMatchNameExample"))
end

get_change_token_1_patch = @patch function get_change_token(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

get_change_token_status_1_patch = @patch function get_change_token_status(a...; b...)
    return Dict{String,Any}("ChangeTokenStatus" => "PENDING")
end

get_ipset_1_patch = @patch function get_ipset(a...; b...)
    return Dict{String,Any}("IPSet" => Dict{String,Any}("IPSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MyIPSetFriendlyName","IPSetDescriptors" => Any[Dict{String,Any}("Value" => "192.0.2.44/32","Type" => "IPV4")]))
end

get_rule_1_patch = @patch function get_rule(a...; b...)
    return Dict{String,Any}("Rule" => Dict{String,Any}("MetricName" => "WAFByteHeaderRule","Name" => "WAFByteHeaderRule","RuleId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Predicates" => Any[Dict{String,Any}("Negated" => false,"DataId" => "MyByteMatchSetID","Type" => "ByteMatch")]))
end

get_sampled_requests_1_patch = @patch function get_sampled_requests(a...; b...)
    return Dict{String,Any}("PopulationSize" => 50,"SampledRequests" => Any[Dict{String,Any}("Request" => Dict{String,Any}("Headers" => Any[Dict{String,Any}("Value" => "BadBot ","Name" => "User-Agent")],"Method" => "HEAD","HTTPVersion" => "HTTP/1.1","Country" => "US","ClientIP" => "192.0.2.44"),"Weight" => 1,"Action" => "BLOCK","Timestamp" => "2016-09-27T14:55Z")],"TimeWindow" => Dict{String,Any}("StartTime" => "2016-09-27T14:50Z","EndTime" => "2016-09-27T15:50Z"))
end

get_size_constraint_set_1_patch = @patch function get_size_constraint_set(a...; b...)
    return Dict{String,Any}("SizeConstraintSet" => Dict{String,Any}("SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","SizeConstraints" => Any[Dict{String,Any}("FieldToMatch" => Dict{String,Any}("Type" => "QUERY_STRING"),"TextTransformation" => "NONE","Size" => 0,"ComparisonOperator" => "GT")],"Name" => "MySampleSizeConstraintSet"))
end

get_sql_injection_match_set_1_patch = @patch function get_sql_injection_match_set(a...; b...)
    return Dict{String,Any}("SqlInjectionMatchSet" => Dict{String,Any}("SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MySQLInjectionMatchSet","SqlInjectionMatchTuples" => Any[Dict{String,Any}("FieldToMatch" => Dict{String,Any}("Type" => "QUERY_STRING"),"TextTransformation" => "URL_DECODE")]))
end

get_web_acl_1_patch = @patch function get_web_acl(a...; b...)
    return Dict{String,Any}("WebACL" => Dict{String,Any}("DefaultAction" => Dict{String,Any}("Type" => "ALLOW"),"Rules" => Any[Dict{String,Any}("Priority" => 1,"Action" => Dict{String,Any}("Type" => "ALLOW"),"RuleId" => "WAFRule-1-Example")],"MetricName" => "CreateExample","WebACLId" => "createwebacl-1472061481310","Name" => "CreateExample"))
end

get_xss_match_set_1_patch = @patch function get_xss_match_set(a...; b...)
    return Dict{String,Any}("XssMatchSet" => Dict{String,Any}("XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MySampleXssMatchSet","XssMatchTuples" => Any[Dict{String,Any}("FieldToMatch" => Dict{String,Any}("Type" => "QUERY_STRING"),"TextTransformation" => "URL_DECODE")]))
end

list_ipsets_1_patch = @patch function list_ipsets(a...; b...)
    return Dict{String,Any}("IPSets" => Any[Dict{String,Any}("IPSetId" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f","Name" => "MyIPSetFriendlyName")])
end

list_rules_1_patch = @patch function list_rules(a...; b...)
    return Dict{String,Any}("Rules" => Any[Dict{String,Any}("Name" => "WAFByteHeaderRule","RuleId" => "WAFRule-1-Example")])
end

list_size_constraint_sets_1_patch = @patch function list_size_constraint_sets(a...; b...)
    return Dict{String,Any}("SizeConstraintSets" => Any[Dict{String,Any}("SizeConstraintSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MySampleSizeConstraintSet")])
end

list_sql_injection_match_sets_1_patch = @patch function list_sql_injection_match_sets(a...; b...)
    return Dict{String,Any}("SqlInjectionMatchSets" => Any[Dict{String,Any}("SqlInjectionMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MySQLInjectionMatchSet")])
end

list_web_acls_1_patch = @patch function list_web_acls(a...; b...)
    return Dict{String,Any}("WebACLs" => Any[Dict{String,Any}("WebACLId" => "webacl-1472061481310","Name" => "WebACLexample")])
end

list_xss_match_sets_1_patch = @patch function list_xss_match_sets(a...; b...)
    return Dict{String,Any}("XssMatchSets" => Any[Dict{String,Any}("XssMatchSetId" => "example1ds3t-46da-4fdb-b8d5-abc321j569j5","Name" => "MySampleXssMatchSet")])
end

update_byte_match_set_1_patch = @patch function update_byte_match_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

update_ipset_1_patch = @patch function update_ipset(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

update_rule_1_patch = @patch function update_rule(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

update_size_constraint_set_1_patch = @patch function update_size_constraint_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

update_sql_injection_match_set_1_patch = @patch function update_sql_injection_match_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

update_web_acl_1_patch = @patch function update_web_acl(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

update_xss_match_set_1_patch = @patch function update_xss_match_set(a...; b...)
    return Dict{String,Any}("ChangeToken" => "abcd12f2-46da-4fdb-b8d5-fbd4c466928f")
end

