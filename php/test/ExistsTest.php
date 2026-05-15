<?php
declare(strict_types=1);

// HeatStressWarning SDK exists test

require_once __DIR__ . '/../heatstresswarning_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = HeatStressWarningSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
