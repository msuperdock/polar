# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: exercise_zones.proto

require 'google/protobuf'

require 'types_pb'
require 'structures_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("exercise_zones.proto", :syntax => :proto2) do
    add_message "polar_data.PbRecordedHeartRateZone" do
      required :zone_limits, :message, 1, "PbHeartRateZone"
      required :in_zone, :message, 2, "PbDuration"
    end
    add_message "polar_data.PbRecordedPowerZone" do
      required :zone_limits, :message, 1, "PbPowerZone"
      required :in_zone, :message, 2, "PbDuration"
    end
    add_message "polar_data.PbRecordedFatFitZones" do
      required :fatfit_limit, :uint32, 1
      required :fat_time, :message, 2, "PbDuration"
      required :fit_time, :message, 3, "PbDuration"
    end
    add_message "polar_data.PbRecordedSpeedZone" do
      required :zone_limits, :message, 1, "PbSpeedZone"
      optional :time_in_zone, :message, 2, "PbDuration"
      optional :distance_in_zone, :float, 3
    end
    add_message "polar_data.PbRecordedZones" do
      repeated :heart_rate_zone, :message, 1, "polar_data.PbRecordedHeartRateZone"
      repeated :power_zone, :message, 2, "polar_data.PbRecordedPowerZone"
      optional :fatfit_zones, :message, 3, "polar_data.PbRecordedFatFitZones"
      repeated :speed_zone, :message, 4, "polar_data.PbRecordedSpeedZone"
      optional :heart_rate_setting_source, :enum, 10, "PbHeartRateZoneSettingSource"
      optional :power_setting_source, :enum, 11, "PbPowerZoneSettingSource"
      optional :speed_setting_source, :enum, 12, "PbSpeedZoneSettingSource"
    end
  end
end

module PolarData
  PbRecordedHeartRateZone = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbRecordedHeartRateZone").msgclass
  PbRecordedPowerZone = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbRecordedPowerZone").msgclass
  PbRecordedFatFitZones = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbRecordedFatFitZones").msgclass
  PbRecordedSpeedZone = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbRecordedSpeedZone").msgclass
  PbRecordedZones = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbRecordedZones").msgclass
end
