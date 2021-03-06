# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: training_session.proto

require 'google/protobuf'

require 'types_pb'
require 'structures_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("training_session.proto", :syntax => :proto2) do
    add_message "polar_data.PbSessionHeartRateStatistics" do
      optional :average, :uint32, 1
      optional :maximum, :uint32, 2
    end
    add_message "polar_data.PbTrainingSession" do
      required :start, :message, 1, "PbLocalDateTime"
      optional :end, :message, 20, "PbLocalDateTime"
      required :exercise_count, :uint32, 2
      optional :device_id, :string, 3
      optional :model_name, :string, 4
      optional :duration, :message, 5, "PbDuration"
      optional :distance, :float, 6
      optional :calories, :uint32, 7
      optional :heart_rate, :message, 8, "polar_data.PbSessionHeartRateStatistics"
      repeated :heart_rate_zone_duration, :message, 9, "PbDuration"
      optional :training_load, :message, 10, "PbTrainingLoad"
      optional :session_name, :message, 11, "PbOneLineText"
      optional :feeling, :float, 12
      optional :note, :message, 13, "PbMultiLineText"
      optional :place, :message, 14, "PbOneLineText"
      optional :latitude, :double, 15
      optional :longitude, :double, 16
      optional :benefit, :enum, 17, "PbExerciseFeedback"
      optional :sport, :message, 18, "PbSportIdentifier"
      optional :training_session_target_id, :message, 19, "PbTrainingSessionTargetId"
      optional :training_session_favorite_id, :message, 21, "PbTrainingSessionFavoriteId"
    end
  end
end

module PolarData
  PbSessionHeartRateStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbSessionHeartRateStatistics").msgclass
  PbTrainingSession = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbTrainingSession").msgclass
end
