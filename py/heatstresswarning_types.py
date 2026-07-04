# Typed models for the HeatStressWarning SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.
#
# These are TypedDicts, not dataclasses: the SDK ops return/accept plain dicts
# at runtime, and a TypedDict IS a dict shape, so the types match the runtime.
# Optional (req:false) keys are modelled as TypedDict key-optionality
# (total=False), split into a required base + total=False subclass when a type
# has both required and optional keys.

from __future__ import annotations

from typing import TypedDict, Any


class HeatStressWarningEn(TypedDict, total=False):
    effective_time: str
    expiry_time: str
    heat_index: float
    humidity: int
    issue_time: str
    recommendation: list
    temperature: float
    update_time: str
    warning_level: str
    warning_message: str


class HeatStressWarningEnListMatch(TypedDict, total=False):
    effective_time: str
    expiry_time: str
    heat_index: float
    humidity: int
    issue_time: str
    recommendation: list
    temperature: float
    update_time: str
    warning_level: str
    warning_message: str


class HeatStressWarningSc(TypedDict, total=False):
    effective_time: str
    expiry_time: str
    heat_index: float
    humidity: int
    issue_time: str
    recommendation: list
    temperature: float
    update_time: str
    warning_level: str
    warning_message: str


class HeatStressWarningScListMatch(TypedDict, total=False):
    effective_time: str
    expiry_time: str
    heat_index: float
    humidity: int
    issue_time: str
    recommendation: list
    temperature: float
    update_time: str
    warning_level: str
    warning_message: str


class HeatStressWarningTc(TypedDict, total=False):
    effective_time: str
    expiry_time: str
    heat_index: float
    humidity: int
    issue_time: str
    recommendation: list
    temperature: float
    update_time: str
    warning_level: str
    warning_message: str


class HeatStressWarningTcListMatch(TypedDict, total=False):
    effective_time: str
    expiry_time: str
    heat_index: float
    humidity: int
    issue_time: str
    recommendation: list
    temperature: float
    update_time: str
    warning_level: str
    warning_message: str
