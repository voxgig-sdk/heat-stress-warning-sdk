# frozen_string_literal: true

# Typed models for the HeatStressWarning SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# HeatStressWarningEn entity data model.
#
# @!attribute [rw] effectiveTime
#   @return [String, nil]
#
# @!attribute [rw] expiryTime
#   @return [String, nil]
#
# @!attribute [rw] heatIndex
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issueTime
#   @return [String, nil]
#
# @!attribute [rw] recommendations
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] updateTime
#   @return [String, nil]
#
# @!attribute [rw] warningLevel
#   @return [String, nil]
#
# @!attribute [rw] warningMessage
#   @return [String, nil]
HeatStressWarningEn = Struct.new(
  :effectiveTime,
  :expiryTime,
  :heatIndex,
  :humidity,
  :issueTime,
  :recommendations,
  :temperature,
  :updateTime,
  :warningLevel,
  :warningMessage,
  keyword_init: true
)

# Request payload for HeatStressWarningEn#list.
#
# @!attribute [rw] effectiveTime
#   @return [String, nil]
#
# @!attribute [rw] expiryTime
#   @return [String, nil]
#
# @!attribute [rw] heatIndex
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issueTime
#   @return [String, nil]
#
# @!attribute [rw] recommendations
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] updateTime
#   @return [String, nil]
#
# @!attribute [rw] warningLevel
#   @return [String, nil]
#
# @!attribute [rw] warningMessage
#   @return [String, nil]
HeatStressWarningEnListMatch = Struct.new(
  :effectiveTime,
  :expiryTime,
  :heatIndex,
  :humidity,
  :issueTime,
  :recommendations,
  :temperature,
  :updateTime,
  :warningLevel,
  :warningMessage,
  keyword_init: true
)

# HeatStressWarningSc entity data model.
#
# @!attribute [rw] effectiveTime
#   @return [String, nil]
#
# @!attribute [rw] expiryTime
#   @return [String, nil]
#
# @!attribute [rw] heatIndex
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issueTime
#   @return [String, nil]
#
# @!attribute [rw] recommendations
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] updateTime
#   @return [String, nil]
#
# @!attribute [rw] warningLevel
#   @return [String, nil]
#
# @!attribute [rw] warningMessage
#   @return [String, nil]
HeatStressWarningSc = Struct.new(
  :effectiveTime,
  :expiryTime,
  :heatIndex,
  :humidity,
  :issueTime,
  :recommendations,
  :temperature,
  :updateTime,
  :warningLevel,
  :warningMessage,
  keyword_init: true
)

# Request payload for HeatStressWarningSc#list.
#
# @!attribute [rw] effectiveTime
#   @return [String, nil]
#
# @!attribute [rw] expiryTime
#   @return [String, nil]
#
# @!attribute [rw] heatIndex
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issueTime
#   @return [String, nil]
#
# @!attribute [rw] recommendations
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] updateTime
#   @return [String, nil]
#
# @!attribute [rw] warningLevel
#   @return [String, nil]
#
# @!attribute [rw] warningMessage
#   @return [String, nil]
HeatStressWarningScListMatch = Struct.new(
  :effectiveTime,
  :expiryTime,
  :heatIndex,
  :humidity,
  :issueTime,
  :recommendations,
  :temperature,
  :updateTime,
  :warningLevel,
  :warningMessage,
  keyword_init: true
)

# HeatStressWarningTc entity data model.
#
# @!attribute [rw] effectiveTime
#   @return [String, nil]
#
# @!attribute [rw] expiryTime
#   @return [String, nil]
#
# @!attribute [rw] heatIndex
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issueTime
#   @return [String, nil]
#
# @!attribute [rw] recommendations
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] updateTime
#   @return [String, nil]
#
# @!attribute [rw] warningLevel
#   @return [String, nil]
#
# @!attribute [rw] warningMessage
#   @return [String, nil]
HeatStressWarningTc = Struct.new(
  :effectiveTime,
  :expiryTime,
  :heatIndex,
  :humidity,
  :issueTime,
  :recommendations,
  :temperature,
  :updateTime,
  :warningLevel,
  :warningMessage,
  keyword_init: true
)

# Request payload for HeatStressWarningTc#list.
#
# @!attribute [rw] effectiveTime
#   @return [String, nil]
#
# @!attribute [rw] expiryTime
#   @return [String, nil]
#
# @!attribute [rw] heatIndex
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issueTime
#   @return [String, nil]
#
# @!attribute [rw] recommendations
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] updateTime
#   @return [String, nil]
#
# @!attribute [rw] warningLevel
#   @return [String, nil]
#
# @!attribute [rw] warningMessage
#   @return [String, nil]
HeatStressWarningTcListMatch = Struct.new(
  :effectiveTime,
  :expiryTime,
  :heatIndex,
  :humidity,
  :issueTime,
  :recommendations,
  :temperature,
  :updateTime,
  :warningLevel,
  :warningMessage,
  keyword_init: true
)

