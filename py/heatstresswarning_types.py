# Typed models for the HeatStressWarning SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class HeatStressWarningEn:
    effective_time: Optional[str] = None
    expiry_time: Optional[str] = None
    heat_index: Optional[float] = None
    humidity: Optional[int] = None
    issue_time: Optional[str] = None
    recommendation: Optional[list] = None
    temperature: Optional[float] = None
    update_time: Optional[str] = None
    warning_level: Optional[str] = None
    warning_message: Optional[str] = None


@dataclass
class HeatStressWarningEnListMatch:
    effective_time: Optional[str] = None
    expiry_time: Optional[str] = None
    heat_index: Optional[float] = None
    humidity: Optional[int] = None
    issue_time: Optional[str] = None
    recommendation: Optional[list] = None
    temperature: Optional[float] = None
    update_time: Optional[str] = None
    warning_level: Optional[str] = None
    warning_message: Optional[str] = None


@dataclass
class HeatStressWarningSc:
    effective_time: Optional[str] = None
    expiry_time: Optional[str] = None
    heat_index: Optional[float] = None
    humidity: Optional[int] = None
    issue_time: Optional[str] = None
    recommendation: Optional[list] = None
    temperature: Optional[float] = None
    update_time: Optional[str] = None
    warning_level: Optional[str] = None
    warning_message: Optional[str] = None


@dataclass
class HeatStressWarningScListMatch:
    effective_time: Optional[str] = None
    expiry_time: Optional[str] = None
    heat_index: Optional[float] = None
    humidity: Optional[int] = None
    issue_time: Optional[str] = None
    recommendation: Optional[list] = None
    temperature: Optional[float] = None
    update_time: Optional[str] = None
    warning_level: Optional[str] = None
    warning_message: Optional[str] = None


@dataclass
class HeatStressWarningTc:
    effective_time: Optional[str] = None
    expiry_time: Optional[str] = None
    heat_index: Optional[float] = None
    humidity: Optional[int] = None
    issue_time: Optional[str] = None
    recommendation: Optional[list] = None
    temperature: Optional[float] = None
    update_time: Optional[str] = None
    warning_level: Optional[str] = None
    warning_message: Optional[str] = None


@dataclass
class HeatStressWarningTcListMatch:
    effective_time: Optional[str] = None
    expiry_time: Optional[str] = None
    heat_index: Optional[float] = None
    humidity: Optional[int] = None
    issue_time: Optional[str] = None
    recommendation: Optional[list] = None
    temperature: Optional[float] = None
    update_time: Optional[str] = None
    warning_level: Optional[str] = None
    warning_message: Optional[str] = None

