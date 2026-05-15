<?php
declare(strict_types=1);

// HeatStressWarning SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class HeatStressWarningMakeContext
{
    public static function call(array $ctxmap, ?HeatStressWarningContext $basectx): HeatStressWarningContext
    {
        return new HeatStressWarningContext($ctxmap, $basectx);
    }
}
