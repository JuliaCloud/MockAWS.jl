using Mocking

describe_services_1_patch = @patch function describe_services(a...; b...)
    return Dict{String, Any}("NextToken" => "abcdefg123", "Services" => Any[Dict{String, Any}("AttributeNames" => Any["volumeType", "maxIopsvolume", "instanceCapacity10xlarge", "locationType", "operation"], "ServiceCode" => "AmazonEC2")], "FormatVersion" => "aws_v1")
end

get_attribute_values_1_patch = @patch function get_attribute_values(a...; b...)
    return Dict{String, Any}("AttributeValues" => Any[Dict{String, Any}("Value" => "Throughput Optimized HDD"), Dict{String, Any}("Value" => "Provisioned IOPS")], "NextToken" => "GpgauEXAMPLEezucl5LV0w==:7GzYJ0nw0DBTJ2J66EoTIIynE6O1uXwQtTRqioJzQadBnDVgHPzI1en4BUQnPCLpzeBk9RQQAWaFieA4+DapFAGLgk+Z/9/cTw9GldnPOHN98+FdmJP7wKU3QQpQ8MQr5KOeBkIsAqvAQYdL0DkL7tHwPtE5iCEByAmg9gcC/yBU1vAOsf7R3VaNN4M5jMDv3woSWqASSIlBVB6tgW78YL22KhssoItM/jWW+aP6Jqtq4mldxp/ct6DWAl+xLFwHU/CbketimPPXyqHF3/UXDw==")
end

get_products_1_patch = @patch function get_products(a...; b...)
    return Dict{String, Any}("NextToken" => "57r3EXAMPLEujbzWfHF7Ciw==:ywSmZsD3mtpQmQLQ5XfOsIMkYybSj+vAT+kGmwMFq+K9DGmIoJkz7lunVeamiOPgthdWSO2a7YKojCO+zY4dJmuNl2QvbNhXs+AJ2Ufn7xGmJncNI2TsEuAsVCUfTAvAQNcwwamtk6XuZ4YdNnooV62FjkV3ZAn40d9+wAxV7+FImvhUHi/+f8afgZdGh2zPUlH8jlV9uUtj0oHp8+DhPUuHXh+WBII1E/aoKpPSm3c=", "PriceList" => Any["{\"product\":{\"productFamily\":\"Storage\",\"attributes\":{\"storageMedia\":\"SSD-backed\",\"maxThroughputvolume\":\"320 MB/sec\",\"volumeType\":\"Provisioned IOPS\",\"maxIopsvolume\":\"20000\",\"servicecode\":\"AmazonEC2\",\"usagetype\":\"CAN1-EBS:VolumeUsage.piops\",\"locationType\":\"AWS Region\",\"location\":\"Canada (Central)\",\"servicename\":\"Amazon Elastic Compute Cloud\",\"maxVolumeSize\":\"16 TiB\",\"operation\":\"\"},\"sku\":\"WQGC34PB2AWS8R4U\"},\"serviceCode\":\"AmazonEC2\",\"terms\":{\"OnDemand\":{\"WQGC34PB2AWS8R4U.JRTCKXETXF\":{\"priceDimensions\":{\"WQGC34PB2AWS8R4U.JRTCKXETXF.6YS6EN2CT7\":{\"unit\":\"GB-Mo\",\"endRange\":\"Inf\",\"description\":\"\$0.138 per GB-month of Provisioned IOPS SSD (io1)  provisioned storage - Canada (Central)\",\"appliesTo\":[],\"rateCode\":\"WQGC34PB2AWS8R4U.JRTCKXETXF.6YS6EN2CT7\",\"beginRange\":\"0\",\"pricePerUnit\":{\"USD\":\"0.1380000000\"}}},\"sku\":\"WQGC34PB2AWS8R4U\",\"effectiveDate\":\"2017-08-01T00:00:00Z\",\"offerTermCode\":\"JRTCKXETXF\",\"termAttributes\":{}}}},\"version\":\"20170901182201\",\"publicationDate\":\"2017-09-01T18:22:01Z\"}"], "FormatVersion" => "aws_v1")
end

