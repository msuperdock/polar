#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'structures.pb'; rescue LoadError; end

module PolarData
  # forward declarations
  class PbExerciseSensor < ::ProtocolBuffers::Message; end
  class PbExerciseSensors < ::ProtocolBuffers::Message; end

  class PbExerciseSensor < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbExerciseSensor"

    required ::PbBleMac, :mac, 1
    optional ::PbDeviceId, :device_id, 2
    optional ::PbBleDeviceName, :device_name, 3
  end

  class PbExerciseSensors < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbExerciseSensors"

    repeated ::PolarData::PbExerciseSensor, :sensors, 1
  end

end