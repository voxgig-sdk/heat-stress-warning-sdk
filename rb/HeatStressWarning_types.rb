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
# @!attribute [rw] effective_time
#   @return [String, nil]
#
# @!attribute [rw] expiry_time
#   @return [String, nil]
#
# @!attribute [rw] heat_index
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issue_time
#   @return [String, nil]
#
# @!attribute [rw] recommendation
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] update_time
#   @return [String, nil]
#
# @!attribute [rw] warning_level
#   @return [String, nil]
#
# @!attribute [rw] warning_message
#   @return [String, nil]
HeatStressWarningEn = Struct.new(
  :effective_time,
  :expiry_time,
  :heat_index,
  :humidity,
  :issue_time,
  :recommendation,
  :temperature,
  :update_time,
  :warning_level,
  :warning_message,
  keyword_init: true
)

# Match filter for HeatStressWarningEn#list (any subset of HeatStressWarningEn fields).
#
# @!attribute [rw] effective_time
#   @return [String, nil]
#
# @!attribute [rw] expiry_time
#   @return [String, nil]
#
# @!attribute [rw] heat_index
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issue_time
#   @return [String, nil]
#
# @!attribute [rw] recommendation
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] update_time
#   @return [String, nil]
#
# @!attribute [rw] warning_level
#   @return [String, nil]
#
# @!attribute [rw] warning_message
#   @return [String, nil]
HeatStressWarningEnListMatch = Struct.new(
  :effective_time,
  :expiry_time,
  :heat_index,
  :humidity,
  :issue_time,
  :recommendation,
  :temperature,
  :update_time,
  :warning_level,
  :warning_message,
  keyword_init: true
)

# HeatStressWarningSc entity data model.
#
# @!attribute [rw] effective_time
#   @return [String, nil]
#
# @!attribute [rw] expiry_time
#   @return [String, nil]
#
# @!attribute [rw] heat_index
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issue_time
#   @return [String, nil]
#
# @!attribute [rw] recommendation
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] update_time
#   @return [String, nil]
#
# @!attribute [rw] warning_level
#   @return [String, nil]
#
# @!attribute [rw] warning_message
#   @return [String, nil]
HeatStressWarningSc = Struct.new(
  :effective_time,
  :expiry_time,
  :heat_index,
  :humidity,
  :issue_time,
  :recommendation,
  :temperature,
  :update_time,
  :warning_level,
  :warning_message,
  keyword_init: true
)

# Match filter for HeatStressWarningSc#list (any subset of HeatStressWarningSc fields).
#
# @!attribute [rw] effective_time
#   @return [String, nil]
#
# @!attribute [rw] expiry_time
#   @return [String, nil]
#
# @!attribute [rw] heat_index
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issue_time
#   @return [String, nil]
#
# @!attribute [rw] recommendation
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] update_time
#   @return [String, nil]
#
# @!attribute [rw] warning_level
#   @return [String, nil]
#
# @!attribute [rw] warning_message
#   @return [String, nil]
HeatStressWarningScListMatch = Struct.new(
  :effective_time,
  :expiry_time,
  :heat_index,
  :humidity,
  :issue_time,
  :recommendation,
  :temperature,
  :update_time,
  :warning_level,
  :warning_message,
  keyword_init: true
)

# HeatStressWarningTc entity data model.
#
# @!attribute [rw] effective_time
#   @return [String, nil]
#
# @!attribute [rw] expiry_time
#   @return [String, nil]
#
# @!attribute [rw] heat_index
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issue_time
#   @return [String, nil]
#
# @!attribute [rw] recommendation
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] update_time
#   @return [String, nil]
#
# @!attribute [rw] warning_level
#   @return [String, nil]
#
# @!attribute [rw] warning_message
#   @return [String, nil]
HeatStressWarningTc = Struct.new(
  :effective_time,
  :expiry_time,
  :heat_index,
  :humidity,
  :issue_time,
  :recommendation,
  :temperature,
  :update_time,
  :warning_level,
  :warning_message,
  keyword_init: true
)

# Match filter for HeatStressWarningTc#list (any subset of HeatStressWarningTc fields).
#
# @!attribute [rw] effective_time
#   @return [String, nil]
#
# @!attribute [rw] expiry_time
#   @return [String, nil]
#
# @!attribute [rw] heat_index
#   @return [Float, nil]
#
# @!attribute [rw] humidity
#   @return [Integer, nil]
#
# @!attribute [rw] issue_time
#   @return [String, nil]
#
# @!attribute [rw] recommendation
#   @return [Array, nil]
#
# @!attribute [rw] temperature
#   @return [Float, nil]
#
# @!attribute [rw] update_time
#   @return [String, nil]
#
# @!attribute [rw] warning_level
#   @return [String, nil]
#
# @!attribute [rw] warning_message
#   @return [String, nil]
HeatStressWarningTcListMatch = Struct.new(
  :effective_time,
  :expiry_time,
  :heat_index,
  :humidity,
  :issue_time,
  :recommendation,
  :temperature,
  :update_time,
  :warning_level,
  :warning_message,
  keyword_init: true
)

