<?php
declare(strict_types=1);

// HeatStressWarning SDK utility: feature_add

class HeatStressWarningFeatureAdd
{
    public static function call(HeatStressWarningContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
