# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: pftp_notification.proto

require 'google/protobuf'

require 'types_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("pftp_notification.proto", :syntax => :proto2) do
    add_message "polar_protocol.PbPFtpFilesystemModifiedParams" do
      required :action, :enum, 1, "polar_protocol.Action"
      required :path, :string, 2
    end
    add_message "polar_protocol.PbPFtpInactivityAlert" do
      required :countdown, :uint32, 1
    end
    add_message "polar_protocol.PbPFtpTrainingSessionStatus" do
      required :inprogress, :bool, 1
    end
    add_message "polar_protocol.PbPFtpAutoSyncStatusParams" do
      required :succeeded, :bool, 1
      optional :description, :string, 2
    end
    add_message "polar_protocol.PbPftpPnsDHAttribute" do
      required :type, :enum, 1, "polar_protocol.PbPftpPnsDHAttributeType"
    end
    add_message "polar_protocol.PbPftpPnsDHNotificationResponse" do
      required :notification_id, :uint32, 1
      repeated :attributes, :message, 2, "polar_protocol.PbPftpPnsDHAttribute"
    end
    add_message "polar_protocol.PbPftpPnsState" do
      required :notifications_enabled, :bool, 1
      optional :preview_enabled, :bool, 2
    end
    add_message "polar_protocol.PbPFtpStopSyncParams" do
      required :completed, :bool, 1
      optional :description, :string, 2
    end
    add_message "polar_protocol.PbPFtpFactoryResetParams" do
      required :sleep, :bool, 1
      optional :do_factory_defaults, :bool, 2, default: true
      optional :ota_fwupdate, :bool, 3, default: false
    end
    add_message "polar_protocol.PbPFtpStartAutosyncParams" do
      required :timeout, :uint32, 1
    end
    add_message "polar_protocol.PbPftpPnsHDAttribute" do
      required :type, :enum, 1, "polar_protocol.PbPftpPnsHDAttributeType"
      optional :data, :string, 2
      optional :attribute_full_size, :uint32, 3
    end
    add_message "polar_protocol.PbPftpPnsHDNotification" do
      required :notification_id, :uint32, 1
      required :category_id, :enum, 2, "polar_protocol.PbPftpPnsHDCategoryID"
      required :action, :enum, 3, "polar_protocol.Action"
      required :issue_time, :message, 4, "PbLocalDateTime"
      optional :new_same_category_notifications, :uint32, 5
      optional :unread_same_category_notifications, :uint32, 6
      repeated :attributes, :message, 7, "polar_protocol.PbPftpPnsHDAttribute"
    end
    add_enum "polar_protocol.PbPFtpDevToHostNotification" do
      value :FILESYSTEM_MODIFIED, 0
      value :INTERNAL_TEST_EVENT, 1
      value :IDLING, 2
      value :BATTERY_STATUS, 3
      value :INACTIVITY_ALERT, 4
      value :TRAINING_SESSION_STATUS, 5
      value :SYNC_REQUIRED, 7
      value :AUTOSYNC_STATUS, 8
      value :PNS_DH_NOTIFICATION_RESPONSE, 9
      value :PNS_SETTINGS, 10
    end
    add_enum "polar_protocol.Action" do
      value :CREATED, 0
      value :UPDATED, 1
      value :REMOVED, 2
    end
    add_enum "polar_protocol.PbPftpPnsDHAttributeType" do
      value :UNKNOWN_ACTION, 1
      value :POSITIVE_ACTION, 2
      value :NEGATIVE_ACTION, 3
      value :CLEAR_ACTION, 4
    end
    add_enum "polar_protocol.PbPFtpHostToDevNotification" do
      value :START_SYNC, 0
      value :STOP_SYNC, 1
      value :RESET, 2
      value :LOCK_PRODUCTION_DATA, 3
      value :TERMINATE_SYNC, 4
      value :KEEP_ALIVE, 5
      value :START_AUTOSYNC, 6
      value :PNS_HD_NOTIFICATION, 7
      value :INITIALIZE_SESSION, 8
      value :TERMINATE_SESSION, 9
    end
    add_enum "polar_protocol.PbPftpPnsHDCategoryID" do
      value :CATEGORY_ID_OTHER, 0
      value :CATEGORY_ID_POLAR, 1
      value :CATEGORY_ID_INCOMINGCALL, 2
      value :CATEGORY_ID_MISSEDCALL, 3
      value :CATEGORY_ID_VOICEMAIL, 4
      value :CATEGORY_ID_SOCIAL, 5
      value :CATEGORY_ID_SCHEDULE, 6
      value :CATEGORY_ID_EMAIL, 7
      value :CATEGORY_ID_NEWS, 8
      value :CATEGORY_ID_HEALTHANDFITNESS, 9
      value :CATEGORY_ID_BUSINESSANDFINANCE, 10
      value :CATEGORY_ID_LOCATION, 11
      value :CATEGORY_ID_ENTERTAINMENT, 12
      value :CATEGORY_ID_ALARM, 13
      value :CATEGORY_ID_PROMO, 14
      value :CATEGORY_ID_RECOMMENDATION, 15
      value :CATEGORY_ID_STATUS, 16
      value :CATEGORY_ID_TRANSPORT, 17
    end
    add_enum "polar_protocol.PbPftpPnsHDAttributeType" do
      value :TITLE, 0
      value :SUBTITLE, 1
      value :MESSAGE, 2
      value :POSITIVE_ACTION_LABEL, 3
      value :NEGATIVE_ACTION_LABEL, 4
      value :APPLICATION_NAME, 5
      value :CLEAR_ACTION_LABEL, 6
    end
  end
end

module PolarProtocol
  PbPFtpFilesystemModifiedParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpFilesystemModifiedParams").msgclass
  PbPFtpInactivityAlert = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpInactivityAlert").msgclass
  PbPFtpTrainingSessionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpTrainingSessionStatus").msgclass
  PbPFtpAutoSyncStatusParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpAutoSyncStatusParams").msgclass
  PbPftpPnsDHAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPftpPnsDHAttribute").msgclass
  PbPftpPnsDHNotificationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPftpPnsDHNotificationResponse").msgclass
  PbPftpPnsState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPftpPnsState").msgclass
  PbPFtpStopSyncParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpStopSyncParams").msgclass
  PbPFtpFactoryResetParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpFactoryResetParams").msgclass
  PbPFtpStartAutosyncParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpStartAutosyncParams").msgclass
  PbPftpPnsHDAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPftpPnsHDAttribute").msgclass
  PbPftpPnsHDNotification = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPftpPnsHDNotification").msgclass
  PbPFtpDevToHostNotification = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpDevToHostNotification").enummodule
  Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.Action").enummodule
  PbPftpPnsDHAttributeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPftpPnsDHAttributeType").enummodule
  PbPFtpHostToDevNotification = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPFtpHostToDevNotification").enummodule
  PbPftpPnsHDCategoryID = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPftpPnsHDCategoryID").enummodule
  PbPftpPnsHDAttributeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_protocol.PbPftpPnsHDAttributeType").enummodule
end
