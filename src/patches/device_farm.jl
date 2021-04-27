using Mocking

create_device_pool_1_patch = @patch function create_device_pool(a...; b...)
    return Dict{String, Any}("devicePool" => Dict{String, Any}())
end

create_project_1_patch = @patch function create_project(a...; b...)
    return Dict{String, Any}("project" => Dict{String, Any}("name" => "MyProject", "created" => "1472660939.152", "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE"))
end

create_remote_access_session_1_patch = @patch function create_remote_access_session(a...; b...)
    return Dict{String, Any}("remoteAccessSession" => Dict{String, Any}())
end

create_upload_1_patch = @patch function create_upload(a...; b...)
    return Dict{String, Any}("upload" => Dict{String, Any}("name" => "MyAppiumPythonUpload", "status" => "INITIALIZED", "created" => "1472661404.186", "type" => "APPIUM_PYTHON_TEST_PACKAGE", "arn" => "arn:aws:devicefarm:us-west-2:123456789101:upload:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/b5340a65-3da7-4da6-a26e-12345EXAMPLE", "url" => "https://prod-us-west-2-uploads.s3-us-west-2.amazonaws.com/arn%3Aaws%3Adevicefarm%3Aus-west-2%3A123456789101%3Aproject%3A5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE/uploads/arn%3Aaws%3Adevicefarm%3Aus-west-2%3A123456789101%3Aupload%3A5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/b5340a65-3da7-4da6-a26e-12345EXAMPLE/MyAppiumPythonUpload?AWSAccessKeyId=1234567891011EXAMPLE&Expires=1472747804&Signature=1234567891011EXAMPLE"))
end

delete_device_pool_1_patch = @patch function delete_device_pool(a...; b...)
    return Dict{String, Any}()
end

delete_project_1_patch = @patch function delete_project(a...; b...)
    return Dict{String, Any}()
end

delete_remote_access_session_1_patch = @patch function delete_remote_access_session(a...; b...)
    return Dict{String, Any}()
end

delete_run_1_patch = @patch function delete_run(a...; b...)
    return Dict{String, Any}()
end

delete_upload_1_patch = @patch function delete_upload(a...; b...)
    return Dict{String, Any}()
end

get_account_settings_1_patch = @patch function get_account_settings(a...; b...)
    return Dict{String, Any}("accountSettings" => Dict{String, Any}("awsAccountNumber" => "123456789101", "unmeteredDevices" => Dict{String, Any}("ANDROID" => 1, "IOS" => 2)))
end

get_device_1_patch = @patch function get_device(a...; b...)
    return Dict{String, Any}("device" => Dict{String, Any}("model" => "G2 (Sprint)", "formFactor" => "PHONE", "memory" => 16000000000, "name" => "LG G2 (Sprint)", "cpu" => Dict{String, Any}("architecture" => "armeabi-v7a", "frequency" => "MHz", "clock" => 2265.6), "platform" => "ANDROID", "arn" => "arn:aws:devicefarm:us-west-2::device:A0E6E6E1059E45918208DF75B2B7EF6C", "heapSize" => 256000000, "resolution" => Dict{String, Any}("height" => 1920, "width" => 1080), "image" => "75B2B7EF6C12345EXAMPLE", "manufacturer" => "LG", "os" => "4.2.2"))
end

get_device_pool_1_patch = @patch function get_device_pool(a...; b...)
    return Dict{String, Any}("devicePool" => Dict{String, Any}())
end

get_device_pool_compatibility_1_patch = @patch function get_device_pool_compatibility(a...; b...)
    return Dict{String, Any}("incompatibleDevices" => Any[], "compatibleDevices" => Any[])
end

get_job_1_patch = @patch function get_job(a...; b...)
    return Dict{String, Any}("job" => Dict{String, Any}())
end

get_offering_status_1_patch = @patch function get_offering_status(a...; b...)
    return Dict{String, Any}("nextPeriod" => Dict{String, Any}("D68B3C05-1BA6-4360-BC69-12345EXAMPLE" => Dict{String, Any}("offering" => Dict{String, Any}("platform" => "ANDROID", "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Remote Access Unmetered Device Slot"), "effectiveOn" => "1472688000", "quantity" => 1)), "current" => Dict{String, Any}("D68B3C05-1BA6-4360-BC69-12345EXAMPLE" => Dict{String, Any}("offering" => Dict{String, Any}("platform" => "ANDROID", "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Remote Access Unmetered Device Slot"), "quantity" => 1)))
end

get_project_1_patch = @patch function get_project(a...; b...)
    return Dict{String, Any}("project" => Dict{String, Any}("name" => "My Project", "created" => "1472660939.152", "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE"))
end

get_remote_access_session_1_patch = @patch function get_remote_access_session(a...; b...)
    return Dict{String, Any}("remoteAccessSession" => Dict{String, Any}())
end

get_run_1_patch = @patch function get_run(a...; b...)
    return Dict{String, Any}("run" => Dict{String, Any}("totalJobs" => 3, "counters" => Dict{String, Any}("passed" => 0, "total" => 0, "warned" => 0, "stopped" => 0, "failed" => 0, "errored" => 0, "skipped" => 0), "name" => "My Test Run", "status" => "RUNNING", "platform" => "ANDROID", "created" => "1472667509.852", "completedJobs" => 0, "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE", "result" => "PENDING", "deviceMinutes" => Dict{String, Any}("total" => 0.0, "metered" => 0.0, "unmetered" => 0.0), "billingMethod" => "METERED", "type" => "BUILTIN_EXPLORER"))
end

get_suite_1_patch = @patch function get_suite(a...; b...)
    return Dict{String, Any}("suite" => Dict{String, Any}())
end

get_test_1_patch = @patch function get_test(a...; b...)
    return Dict{String, Any}("test" => Dict{String, Any}())
end

get_upload_1_patch = @patch function get_upload(a...; b...)
    return Dict{String, Any}("upload" => Dict{String, Any}())
end

install_to_remote_access_session_1_patch = @patch function install_to_remote_access_session(a...; b...)
    return Dict{String, Any}("appUpload" => Dict{String, Any}())
end

list_device_pools_1_patch = @patch function list_device_pools(a...; b...)
    return Dict{String, Any}("devicePools" => Any[Dict{String, Any}("name" => "Top Devices", "rules" => Any[Dict{String, Any}("operator" => "IN", "value" => "[\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\"]", "attribute" => "ARN")], "description" => "Top devices", "arn" => "arn:aws:devicefarm:us-west-2::devicepool:082d10e5-d7d7-48a5-ba5c-12345EXAMPLE"), Dict{String, Any}("name" => "My Android Device Pool", "rules" => Any[Dict{String, Any}("operator" => "IN", "value" => "[\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\"]", "attribute" => "ARN")], "description" => "Samsung Galaxy Android devices", "arn" => "arn:aws:devicefarm:us-west-2:123456789101:devicepool:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/bf96e75a-28f6-4e61-b6a7-12345EXAMPLE")])
end

list_devices_1_patch = @patch function list_devices(a...; b...)
    return Dict{String, Any}()
end

list_offering_transactions_1_patch = @patch function list_offering_transactions(a...; b...)
    return Dict{String, Any}("offeringTransactions" => Any[Dict{String, Any}("cost" => Dict{String, Any}("amount" => 0, "currencyCode" => "USD"), "offeringStatus" => Dict{String, Any}("offering" => Dict{String, Any}("platform" => "ANDROID", "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Remote Access Unmetered Device Slot"), "effectiveOn" => "1472688000", "type" => "RENEW", "quantity" => 0), "transactionId" => "03728003-d1ea-4851-abd6-12345EXAMPLE", "createdOn" => "1470021420"), Dict{String, Any}("cost" => Dict{String, Any}("amount" => 250, "currencyCode" => "USD"), "offeringStatus" => Dict{String, Any}("offering" => Dict{String, Any}("platform" => "ANDROID", "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Remote Access Unmetered Device Slot"), "effectiveOn" => "1470021420", "type" => "PURCHASE", "quantity" => 1), "transactionId" => "56820b6e-06bd-473a-8ff8-12345EXAMPLE", "createdOn" => "1470021420"), Dict{String, Any}("cost" => Dict{String, Any}("amount" => 175, "currencyCode" => "USD"), "offeringStatus" => Dict{String, Any}("offering" => Dict{String, Any}("platform" => "ANDROID", "id" => "8980F81C-00D7-469D-8EC6-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Unmetered Device Slot"), "effectiveOn" => "1465538520", "type" => "PURCHASE", "quantity" => 1), "transactionId" => "953ae2c6-d760-4a04-9597-12345EXAMPLE", "createdOn" => "1465538520"), Dict{String, Any}("cost" => Dict{String, Any}("amount" => 8.07, "currencyCode" => "USD"), "offeringStatus" => Dict{String, Any}("offering" => Dict{String, Any}("platform" => "IOS", "id" => "A53D4D73-A6F6-4B82-A0B0-12345EXAMPLE", "type" => "RECURRING", "description" => "iOS Unmetered Device Slot"), "effectiveOn" => "1459344300", "type" => "PURCHASE", "quantity" => 1), "transactionId" => "2baf9021-ae3e-47f5-ab52-12345EXAMPLE", "createdOn" => "1459344300")])
end

list_offerings_1_patch = @patch function list_offerings(a...; b...)
    return Dict{String, Any}("offerings" => Any[Dict{String, Any}("platform" => "IOS", "id" => "A53D4D73-A6F6-4B82-A0B0-12345EXAMPLE", "type" => "RECURRING", "description" => "iOS Unmetered Device Slot", "recurringCharges" => Any[Dict{String, Any}("cost" => Dict{String, Any}("amount" => 250, "currencyCode" => "USD"), "frequency" => "MONTHLY")]), Dict{String, Any}("platform" => "ANDROID", "id" => "8980F81C-00D7-469D-8EC6-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Unmetered Device Slot", "recurringCharges" => Any[Dict{String, Any}("cost" => Dict{String, Any}("amount" => 250, "currencyCode" => "USD"), "frequency" => "MONTHLY")]), Dict{String, Any}("platform" => "ANDROID", "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Remote Access Unmetered Device Slot", "recurringCharges" => Any[Dict{String, Any}("cost" => Dict{String, Any}("amount" => 250, "currencyCode" => "USD"), "frequency" => "MONTHLY")]), Dict{String, Any}("platform" => "IOS", "id" => "552B4DAD-A6C9-45C4-94FB-12345EXAMPLE", "type" => "RECURRING", "description" => "iOS Remote Access Unmetered Device Slot", "recurringCharges" => Any[Dict{String, Any}("cost" => Dict{String, Any}("amount" => 250, "currencyCode" => "USD"), "frequency" => "MONTHLY")])])
end

list_projects_1_patch = @patch function list_projects(a...; b...)
    return Dict{String, Any}("projects" => Any[Dict{String, Any}("name" => "My Test Project", "created" => "1453163262.105", "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:7ad300ed-8183-41a7-bf94-12345EXAMPLE"), Dict{String, Any}("name" => "Hello World", "created" => "1470350112.439", "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:d6b087d9-56db-4e44-b9ec-12345EXAMPLE")])
end

list_remote_access_sessions_1_patch = @patch function list_remote_access_sessions(a...; b...)
    return Dict{String, Any}("remoteAccessSessions" => Any[])
end

list_runs_1_patch = @patch function list_runs(a...; b...)
    return Dict{String, Any}("runs" => Any[Dict{String, Any}("totalJobs" => 3, "counters" => Dict{String, Any}("passed" => 0, "total" => 0, "warned" => 0, "stopped" => 0, "failed" => 0, "errored" => 0, "skipped" => 0), "name" => "My Test Run", "status" => "RUNNING", "platform" => "ANDROID", "created" => "1472667509.852", "completedJobs" => 0, "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE", "result" => "PENDING", "deviceMinutes" => Dict{String, Any}("total" => 0.0, "metered" => 0.0, "unmetered" => 0.0), "billingMethod" => "METERED", "type" => "BUILTIN_EXPLORER")])
end

list_samples_1_patch = @patch function list_samples(a...; b...)
    return Dict{String, Any}("samples" => Any[])
end

list_suites_1_patch = @patch function list_suites(a...; b...)
    return Dict{String, Any}("suites" => Any[])
end

list_tests_1_patch = @patch function list_tests(a...; b...)
    return Dict{String, Any}("tests" => Any[])
end

list_unique_problems_1_patch = @patch function list_unique_problems(a...; b...)
    return Dict{String, Any}("uniqueProblems" => Dict{String, Any}())
end

list_uploads_1_patch = @patch function list_uploads(a...; b...)
    return Dict{String, Any}("uploads" => Any[])
end

purchase_offering_1_patch = @patch function purchase_offering(a...; b...)
    return Dict{String, Any}("offeringTransaction" => Dict{String, Any}("cost" => Dict{String, Any}("amount" => 8.07, "currencyCode" => "USD"), "offeringStatus" => Dict{String, Any}("offering" => Dict{String, Any}("platform" => "ANDROID", "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Remote Access Unmetered Device Slot"), "effectiveOn" => "1472648340", "type" => "PURCHASE", "quantity" => 1), "transactionId" => "d30614ed-1b03-404c-9893-12345EXAMPLE", "createdOn" => "1472648340"))
end

renew_offering_1_patch = @patch function renew_offering(a...; b...)
    return Dict{String, Any}("offeringTransaction" => Dict{String, Any}("cost" => Dict{String, Any}("amount" => 250, "currencyCode" => "USD"), "offeringStatus" => Dict{String, Any}("offering" => Dict{String, Any}("platform" => "ANDROID", "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", "type" => "RECURRING", "description" => "Android Remote Access Unmetered Device Slot"), "effectiveOn" => "1472688000", "type" => "RENEW", "quantity" => 1), "transactionId" => "e90f1405-8c35-4561-be43-12345EXAMPLE", "createdOn" => "1472648880"))
end

schedule_run_1_patch = @patch function schedule_run(a...; b...)
    return Dict{String, Any}("run" => Dict{String, Any}())
end

stop_run_1_patch = @patch function stop_run(a...; b...)
    return Dict{String, Any}("run" => Dict{String, Any}())
end

update_device_pool_1_patch = @patch function update_device_pool(a...; b...)
    return Dict{String, Any}("devicePool" => Dict{String, Any}())
end

update_project_1_patch = @patch function update_project(a...; b...)
    return Dict{String, Any}("project" => Dict{String, Any}("name" => "NewName", "created" => "1448400709.927", "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:8f75187d-101e-4625-accc-12345EXAMPLE"))
end

