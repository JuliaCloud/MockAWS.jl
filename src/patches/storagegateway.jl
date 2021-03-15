using Mocking

activate_gateway_1_patch = @patch function activate_gateway(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B")
end

add_cache_1_patch = @patch function add_cache(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

add_tags_to_resource_1_patch = @patch function add_tags_to_resource(a...; b...)
    return Dict{String,Any}("ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B")
end

add_upload_buffer_1_patch = @patch function add_upload_buffer(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

add_working_storage_1_patch = @patch function add_working_storage(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

cancel_archival_1_patch = @patch function cancel_archival(a...; b...)
    return Dict{String,Any}("TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4")
end

cancel_retrieval_1_patch = @patch function cancel_retrieval(a...; b...)
    return Dict{String,Any}("TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4")
end

create_cachedi_scsivolume_1_patch = @patch function create_cachedi_scsivolume(a...; b...)
    return Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume","VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB")
end

create_snapshot_1_patch = @patch function create_snapshot(a...; b...)
    return Dict{String,Any}("SnapshotId" => "snap-78e22663","VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB")
end

create_snapshot_from_volume_recovery_point_1_patch = @patch function create_snapshot_from_volume_recovery_point(a...; b...)
    return Dict{String,Any}("SnapshotId" => "snap-78e22663","VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB","VolumeRecoveryPointTime" => "2017-06-30T10:10:10.000Z")
end

create_storedi_scsivolume_1_patch = @patch function create_storedi_scsivolume(a...; b...)
    return Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume","VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB","VolumeSizeInBytes" => 1099511627776)
end

create_tape_with_barcode_1_patch = @patch function create_tape_with_barcode(a...; b...)
    return Dict{String,Any}("TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST12345")
end

create_tapes_1_patch = @patch function create_tapes(a...; b...)
    return Dict{String,Any}("TapeARNs" => Any["arn:aws:storagegateway:us-east-1:999999999999:tape/TEST38A29D", "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST3AA29F", "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST3BA29E"])
end

delete_bandwidth_rate_limit_1_patch = @patch function delete_bandwidth_rate_limit(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

delete_chap_credentials_1_patch = @patch function delete_chap_credentials(a...; b...)
    return Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume","InitiatorName" => "iqn.1991-05.com.microsoft:computername.domain.example.com")
end

delete_gateway_1_patch = @patch function delete_gateway(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

delete_snapshot_schedule_1_patch = @patch function delete_snapshot_schedule(a...; b...)
    return Dict{String,Any}("VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB")
end

delete_tape_1_patch = @patch function delete_tape(a...; b...)
    return Dict{String,Any}("TapeARN" => "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0")
end

delete_tape_archive_1_patch = @patch function delete_tape_archive(a...; b...)
    return Dict{String,Any}("TapeARN" => "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0")
end

delete_volume_1_patch = @patch function delete_volume(a...; b...)
    return Dict{String,Any}("VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB")
end

describe_bandwidth_rate_limit_1_patch = @patch function describe_bandwidth_rate_limit(a...; b...)
    return Dict{String,Any}("AverageDownloadRateLimitInBitsPerSec" => 204800,"GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","AverageUploadRateLimitInBitsPerSec" => 102400)
end

describe_cache_1_patch = @patch function describe_cache(a...; b...)
    return Dict{String,Any}("CacheHitPercentage" => 99.68,"CacheMissPercentage" => 0.32,"CacheAllocatedInBytes" => 2199023255552,"CacheUsedPercentage" => 0.07,"CacheDirtyPercentage" => 0.07,"GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","DiskIds" => Any["pci-0000:03:00.0-scsi-0:0:0:0", "pci-0000:04:00.0-scsi-0:1:0:0"])
end

describe_cachedi_scsivolumes_1_patch = @patch function describe_cachedi_scsivolumes(a...; b...)
    return Dict{String,Any}("CachediSCSIVolumes" => Any[Dict{String,Any}("VolumeType" => "CACHED iSCSI","VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB","VolumeSizeInBytes" => 1099511627776,"VolumeStatus" => "AVAILABLE","VolumeId" => "vol-1122AABB","VolumeiSCSIAttributes" => Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume","ChapEnabled" => true,"NetworkInterfacePort" => 3260,"NetworkInterfaceId" => "10.243.43.207","LunNumber" => 1))])
end

describe_chap_credentials_1_patch = @patch function describe_chap_credentials(a...; b...)
    return Dict{String,Any}("ChapCredentials" => Any[Dict{String,Any}("SecretToAuthenticateTarget" => "222222222222","InitiatorName" => "iqn.1991-05.com.microsoft:computername.domain.example.com","TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume","SecretToAuthenticateInitiator" => "111111111111")])
end

describe_gateway_information_1_patch = @patch function describe_gateway_information(a...; b...)
    return Dict{String,Any}("GatewayName" => "My_Gateway","NextUpdateAvailabilityDate" => "2017-01-02T16:00:00","GatewayTimezone" => "GMT-8:00","LastSoftwareUpdate" => "2016-01-02T16:00:00","GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","GatewayState" => "STATE_RUNNING","GatewayType" => "STORED","GatewayNetworkInterfaces" => Any[Dict{String,Any}("Ipv4Address" => "10.35.69.216")],"GatewayId" => "sgw-AABB1122")
end

describe_maintenance_start_time_1_patch = @patch function describe_maintenance_start_time(a...; b...)
    return Dict{String,Any}("MinuteOfHour" => 35,"Timezone" => "GMT+7:00","DayOfWeek" => 2,"GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","HourOfDay" => 15)
end

describe_snapshot_schedule_1_patch = @patch function describe_snapshot_schedule(a...; b...)
    return Dict{String,Any}("Description" => "sgw-AABB1122:vol-AABB1122:Schedule","Timezone" => "GMT+7:00","StartAt" => 6,"VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB","RecurrenceInHours" => 24)
end

describe_storedi_scsivolumes_1_patch = @patch function describe_storedi_scsivolumes(a...; b...)
    return Dict{String,Any}("StorediSCSIVolumes" => Any[Dict{String,Any}("VolumeProgress" => 23.7,"VolumeDiskId" => "pci-0000:03:00.0-scsi-0:0:0:0","VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB","VolumeSizeInBytes" => 1099511627776,"VolumeStatus" => "BOOTSTRAPPING","VolumeId" => "vol-1122AABB","PreservedExistingData" => false,"VolumeiSCSIAttributes" => Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume","ChapEnabled" => true,"NetworkInterfacePort" => 3260,"NetworkInterfaceId" => "10.243.43.207"))])
end

describe_tape_archives_1_patch = @patch function describe_tape_archives(a...; b...)
    return Dict{String,Any}("TapeArchives" => Any[Dict{String,Any}("TapeSizeInBytes" => 107374182400,"TapeBarcode" => "AM08A1AD","TapeStatus" => "ARCHIVED","TapeARN" => "arn:aws:storagegateway:us-east-1:999999999:tape/AM08A1AD","CompletionTime" => "2016-12-16T13:50Z"), Dict{String,Any}("TapeSizeInBytes" => 429496729600,"TapeBarcode" => "AMZN01A2A4","TapeStatus" => "ARCHIVED","TapeARN" => "arn:aws:storagegateway:us-east-1:999999999:tape/AMZN01A2A4","CompletionTime" => "2016-12-16T13:59Z")],"Marker" => "1")
end

describe_tape_recovery_points_1_patch = @patch function describe_tape_recovery_points(a...; b...)
    return Dict{String,Any}("Marker" => "1","TapeRecoveryPointInfos" => Any[Dict{String,Any}("TapeSizeInBytes" => 1471550497,"TapeStatus" => "AVAILABLE","TapeARN" => "arn:aws:storagegateway:us-east-1:999999999:tape/AMZN01A2A4","TapeRecoveryPointTime" => "2016-12-16T13:50Z")],"GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

describe_tapes_1_patch = @patch function describe_tapes(a...; b...)
    return Dict{String,Any}("Marker" => "1","Tapes" => Any[Dict{String,Any}("TapeSizeInBytes" => 107374182400,"TapeBarcode" => "TEST04A2A1","TapeStatus" => "AVAILABLE","TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1"), Dict{String,Any}("TapeSizeInBytes" => 107374182400,"TapeBarcode" => "TEST05A2A0","TapeStatus" => "AVAILABLE","TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0")])
end

describe_upload_buffer_1_patch = @patch function describe_upload_buffer(a...; b...)
    return Dict{String,Any}("UploadBufferAllocatedInBytes" => 0,"UploadBufferUsedInBytes" => 161061273600,"GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","DiskIds" => Any["pci-0000:03:00.0-scsi-0:0:0:0", "pci-0000:04:00.0-scsi-0:1:0:0"])
end

describe_upload_buffer_2_patch = @patch function describe_upload_buffer(a...; b...)
    return Dict{String,Any}("UploadBufferAllocatedInBytes" => 161061273600,"UploadBufferUsedInBytes" => 0,"GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","DiskIds" => Any["pci-0000:03:00.0-scsi-0:0:0:0", "pci-0000:04:00.0-scsi-0:1:0:0"])
end

describe_vtldevices_1_patch = @patch function describe_vtldevices(a...; b...)
    return Dict{String,Any}("Marker" => "1","GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B","VTLDevices" => Any[Dict{String,Any}("VTLDeviceVendor" => "STK","DeviceiSCSIAttributes" => Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-mediachanger","ChapEnabled" => false,"NetworkInterfacePort" => 3260,"NetworkInterfaceId" => "10.243.43.207"),"VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001","VTLDeviceProductIdentifier" => "L700","VTLDeviceType" => "Medium Changer"), Dict{String,Any}("VTLDeviceVendor" => "IBM","DeviceiSCSIAttributes" => Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-tapedrive-01","ChapEnabled" => false,"NetworkInterfacePort" => 3260,"NetworkInterfaceId" => "10.243.43.209"),"VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_TAPEDRIVE_00001","VTLDeviceProductIdentifier" => "ULT3580-TD5","VTLDeviceType" => "Tape Drive"), Dict{String,Any}("VTLDeviceVendor" => "IBM","DeviceiSCSIAttributes" => Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-tapedrive-02","ChapEnabled" => false,"NetworkInterfacePort" => 3260,"NetworkInterfaceId" => "10.243.43.209"),"VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_TAPEDRIVE_00002","VTLDeviceProductIdentifier" => "ULT3580-TD5","VTLDeviceType" => "Tape Drive")])
end

describe_working_storage_1_patch = @patch function describe_working_storage(a...; b...)
    return Dict{String,Any}("WorkingStorageAllocatedInBytes" => 2199023255552,"GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","WorkingStorageUsedInBytes" => 789207040,"DiskIds" => Any["pci-0000:03:00.0-scsi-0:0:0:0", "pci-0000:03:00.0-scsi-0:0:1:0"])
end

disable_gateway_1_patch = @patch function disable_gateway(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

list_gateways_1_patch = @patch function list_gateways(a...; b...)
    return Dict{String,Any}("Marker" => "1","Gateways" => Any[Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"), Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-23A4567C")])
end

list_local_disks_1_patch = @patch function list_local_disks(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","Disks" => Any[Dict{String,Any}("DiskId" => "pci-0000:03:00.0-scsi-0:0:0:0","DiskSizeInBytes" => 1099511627776,"DiskStatus" => "missing","DiskNode" => "SCSI(0:0)","DiskPath" => "/dev/sda","DiskAllocationType" => "CACHE_STORAGE"), Dict{String,Any}("DiskId" => "pci-0000:03:00.0-scsi-0:0:1:0","DiskSizeInBytes" => 1099511627776,"DiskStatus" => "present","DiskNode" => "SCSI(0:1)","DiskPath" => "/dev/sdb","DiskAllocationResource" => "","DiskAllocationType" => "UPLOAD_BUFFER")])
end

list_tags_for_resource_1_patch = @patch function list_tags_for_resource(a...; b...)
    return Dict{String,Any}("Marker" => "1","ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B","Tags" => Any[Dict{String,Any}("Value" => "East Coast","Key" => "Dev Gatgeway Region")])
end

list_volume_recovery_points_1_patch = @patch function list_volume_recovery_points(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","VolumeRecoveryPointInfos" => Any[Dict{String,Any}("VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB","VolumeSizeInBytes" => 536870912000,"VolumeRecoveryPointTime" => "2012-09-04T21:08:44.627Z")])
end

list_volumes_1_patch = @patch function list_volumes(a...; b...)
    return Dict{String,Any}("Marker" => "1","VolumeInfos" => Any[Dict{String,Any}("VolumeType" => "STORED","VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB","VolumeSizeInBytes" => 107374182400,"VolumeId" => "vol-1122AABB","GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B","GatewayId" => "sgw-12A3456B"), Dict{String,Any}("VolumeType" => "STORED","VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C/volume/vol-3344CCDD","VolumeSizeInBytes" => 107374182400,"VolumeId" => "vol-1122AABB","GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C","GatewayId" => "sgw-gw-13B4567C")],"GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

remove_tags_from_resource_1_patch = @patch function remove_tags_from_resource(a...; b...)
    return Dict{String,Any}("ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B")
end

reset_cache_1_patch = @patch function reset_cache(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C")
end

retrieve_tape_archive_1_patch = @patch function retrieve_tape_archive(a...; b...)
    return Dict{String,Any}("TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF")
end

retrieve_tape_recovery_point_1_patch = @patch function retrieve_tape_recovery_point(a...; b...)
    return Dict{String,Any}("TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF")
end

set_local_console_password_1_patch = @patch function set_local_console_password(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B")
end

shutdown_gateway_1_patch = @patch function shutdown_gateway(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B")
end

start_gateway_1_patch = @patch function start_gateway(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B")
end

update_bandwidth_rate_limit_1_patch = @patch function update_bandwidth_rate_limit(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

update_chap_credentials_1_patch = @patch function update_chap_credentials(a...; b...)
    return Dict{String,Any}("TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume","InitiatorName" => "iqn.1991-05.com.microsoft:computername.domain.example.com")
end

update_gateway_information_1_patch = @patch function update_gateway_information(a...; b...)
    return Dict{String,Any}("GatewayName" => "","GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

update_gateway_software_now_1_patch = @patch function update_gateway_software_now(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

update_maintenance_start_time_1_patch = @patch function update_maintenance_start_time(a...; b...)
    return Dict{String,Any}("GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B")
end

update_snapshot_schedule_1_patch = @patch function update_snapshot_schedule(a...; b...)
    return Dict{String,Any}("VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB")
end

update_vtldevice_type_1_patch = @patch function update_vtldevice_type(a...; b...)
    return Dict{String,Any}("VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001")
end

