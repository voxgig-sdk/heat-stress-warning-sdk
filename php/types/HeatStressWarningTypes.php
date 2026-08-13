<?php
declare(strict_types=1);

// Typed models for the HeatStressWarning SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** HeatStressWarningEn entity data model. */
class HeatStressWarningEn
{
    public ?string $effectiveTime = null;
    public ?string $expiryTime = null;
    public ?float $heatIndex = null;
    public ?int $humidity = null;
    public ?string $issueTime = null;
    public ?array $recommendations = null;
    public ?float $temperature = null;
    public ?string $updateTime = null;
    public ?string $warningLevel = null;
    public ?string $warningMessage = null;
}

/** Request payload for HeatStressWarningEn#list. */
class HeatStressWarningEnListMatch
{
    public ?string $effectiveTime = null;
    public ?string $expiryTime = null;
    public ?float $heatIndex = null;
    public ?int $humidity = null;
    public ?string $issueTime = null;
    public ?array $recommendations = null;
    public ?float $temperature = null;
    public ?string $updateTime = null;
    public ?string $warningLevel = null;
    public ?string $warningMessage = null;
}

/** HeatStressWarningSc entity data model. */
class HeatStressWarningSc
{
    public ?string $effectiveTime = null;
    public ?string $expiryTime = null;
    public ?float $heatIndex = null;
    public ?int $humidity = null;
    public ?string $issueTime = null;
    public ?array $recommendations = null;
    public ?float $temperature = null;
    public ?string $updateTime = null;
    public ?string $warningLevel = null;
    public ?string $warningMessage = null;
}

/** Request payload for HeatStressWarningSc#list. */
class HeatStressWarningScListMatch
{
    public ?string $effectiveTime = null;
    public ?string $expiryTime = null;
    public ?float $heatIndex = null;
    public ?int $humidity = null;
    public ?string $issueTime = null;
    public ?array $recommendations = null;
    public ?float $temperature = null;
    public ?string $updateTime = null;
    public ?string $warningLevel = null;
    public ?string $warningMessage = null;
}

/** HeatStressWarningTc entity data model. */
class HeatStressWarningTc
{
    public ?string $effectiveTime = null;
    public ?string $expiryTime = null;
    public ?float $heatIndex = null;
    public ?int $humidity = null;
    public ?string $issueTime = null;
    public ?array $recommendations = null;
    public ?float $temperature = null;
    public ?string $updateTime = null;
    public ?string $warningLevel = null;
    public ?string $warningMessage = null;
}

/** Request payload for HeatStressWarningTc#list. */
class HeatStressWarningTcListMatch
{
    public ?string $effectiveTime = null;
    public ?string $expiryTime = null;
    public ?float $heatIndex = null;
    public ?int $humidity = null;
    public ?string $issueTime = null;
    public ?array $recommendations = null;
    public ?float $temperature = null;
    public ?string $updateTime = null;
    public ?string $warningLevel = null;
    public ?string $warningMessage = null;
}

