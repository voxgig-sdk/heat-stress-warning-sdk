-- Typed models for the HeatStressWarning SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class HeatStressWarningEn
---@field effective_time? string
---@field expiry_time? string
---@field heat_index? number
---@field humidity? number
---@field issue_time? string
---@field recommendation? table
---@field temperature? number
---@field update_time? string
---@field warning_level? string
---@field warning_message? string

---@class HeatStressWarningEnListMatch

---@class HeatStressWarningSc
---@field effective_time? string
---@field expiry_time? string
---@field heat_index? number
---@field humidity? number
---@field issue_time? string
---@field recommendation? table
---@field temperature? number
---@field update_time? string
---@field warning_level? string
---@field warning_message? string

---@class HeatStressWarningScListMatch

---@class HeatStressWarningTc
---@field effective_time? string
---@field expiry_time? string
---@field heat_index? number
---@field humidity? number
---@field issue_time? string
---@field recommendation? table
---@field temperature? number
---@field update_time? string
---@field warning_level? string
---@field warning_message? string

---@class HeatStressWarningTcListMatch

local M = {}

return M
