<?php
declare(strict_types=1);

// HeatStressWarning SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class HeatStressWarningFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new HeatStressWarningBaseFeature();
            case "test":
                return new HeatStressWarningTestFeature();
            default:
                return new HeatStressWarningBaseFeature();
        }
    }
}
