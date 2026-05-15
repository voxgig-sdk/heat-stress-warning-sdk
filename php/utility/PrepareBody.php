<?php
declare(strict_types=1);

// HeatStressWarning SDK utility: prepare_body

class HeatStressWarningPrepareBody
{
    public static function call(HeatStressWarningContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
