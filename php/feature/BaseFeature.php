<?php
declare(strict_types=1);

// HeatStressWarning SDK base feature

class HeatStressWarningBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(HeatStressWarningContext $ctx, array $options): void {}
    public function PostConstruct(HeatStressWarningContext $ctx): void {}
    public function PostConstructEntity(HeatStressWarningContext $ctx): void {}
    public function SetData(HeatStressWarningContext $ctx): void {}
    public function GetData(HeatStressWarningContext $ctx): void {}
    public function GetMatch(HeatStressWarningContext $ctx): void {}
    public function SetMatch(HeatStressWarningContext $ctx): void {}
    public function PrePoint(HeatStressWarningContext $ctx): void {}
    public function PreSpec(HeatStressWarningContext $ctx): void {}
    public function PreRequest(HeatStressWarningContext $ctx): void {}
    public function PreResponse(HeatStressWarningContext $ctx): void {}
    public function PreResult(HeatStressWarningContext $ctx): void {}
    public function PreDone(HeatStressWarningContext $ctx): void {}
    public function PreUnexpected(HeatStressWarningContext $ctx): void {}
}
