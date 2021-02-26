using Mocking

delete_lexicon_1_patch = @patch function delete_lexicon(a...; b...)
    return Dict{String,Any}()
end

describe_voices_1_patch = @patch function describe_voices(a...; b...)
    return Dict{String,Any}("Voices" => Any[Dict{String,Any}("Id" => "Emma","LanguageName" => "British English","Gender" => "Female","LanguageCode" => "en-GB","Name" => "Emma"), Dict{String,Any}("Id" => "Brian","LanguageName" => "British English","Gender" => "Male","LanguageCode" => "en-GB","Name" => "Brian"), Dict{String,Any}("Id" => "Amy","LanguageName" => "British English","Gender" => "Female","LanguageCode" => "en-GB","Name" => "Amy")])
end

get_lexicon_1_patch = @patch function get_lexicon(a...; b...)
    return Dict{String,Any}("Lexicon" => Dict{String,Any}("Content" => "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<lexicon version=\"1.0\" \r\n      xmlns=\"http://www.w3.org/2005/01/pronunciation-lexicon\"\r\n      xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \r\n      xsi:schemaLocation=\"http://www.w3.org/2005/01/pronunciation-lexicon \r\n        http://www.w3.org/TR/2007/CR-pronunciation-lexicon-20071212/pls.xsd\"\r\n      alphabet=\"ipa\" \r\n      xml:lang=\"en-US\">\r\n  <lexeme>\r\n    <grapheme>W3C</grapheme>\r\n    <alias>World Wide Web Consortium</alias>\r\n  </lexeme>\r\n</lexicon>","Name" => "example"),"LexiconAttributes" => Dict{String,Any}("Alphabet" => "ipa","LexiconArn" => "arn:aws:polly:us-east-1:123456789012:lexicon/example","LastModified" => 1.478542980117e9,"LexemesCount" => 1,"LanguageCode" => "en-US","Size" => 503))
end

list_lexicons_1_patch = @patch function list_lexicons(a...; b...)
    return Dict{String,Any}("Lexicons" => Any[Dict{String,Any}("Attributes" => Dict{String,Any}("Alphabet" => "ipa","LexiconArn" => "arn:aws:polly:us-east-1:123456789012:lexicon/example","LastModified" => 1.478542980117e9,"LexemesCount" => 1,"LanguageCode" => "en-US","Size" => 503),"Name" => "example")])
end

put_lexicon_1_patch = @patch function put_lexicon(a...; b...)
    return Dict{String,Any}()
end

synthesize_speech_1_patch = @patch function synthesize_speech(a...; b...)
    return Dict{String,Any}("RequestCharacters" => 37,"AudioStream" => "TEXT","ContentType" => "audio/mpeg")
end

