<?php
declare(strict_types=1);

// HeatStressWarning SDK utility: result_body

class HeatStressWarningResultBody
{
    public static function call(HeatStressWarningContext $ctx): ?HeatStressWarningResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
