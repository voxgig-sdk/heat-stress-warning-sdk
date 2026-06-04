<?php
declare(strict_types=1);

// HeatStressWarningEn entity test

require_once __DIR__ . '/../heatstresswarning_sdk.php';
require_once __DIR__ . '/Runner.php';

use PHPUnit\Framework\TestCase;
use Voxgig\Struct\Struct as Vs;

class HeatStressWarningEnEntityTest extends TestCase
{
    public function test_create_instance(): void
    {
        $testsdk = HeatStressWarningSDK::test(null, null);
        $ent = $testsdk->HeatStressWarningEn(null);
        $this->assertNotNull($ent);
    }

    public function test_basic_flow(): void
    {
        $setup = heat_stress_warning_en_basic_setup(null);
        // Per-op sdk-test-control.json skip.
        $_live = !empty($setup["live"]);
        foreach (["list"] as $_op) {
            [$_shouldSkip, $_reason] = Runner::is_control_skipped("entityOp", "heat_stress_warning_en." . $_op, $_live ? "live" : "unit");
            if ($_shouldSkip) {
                $this->markTestSkipped($_reason ?? "skipped via sdk-test-control.json");
                return;
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live mode
        // without an *_ENTID env override, those IDs hit the live API and 4xx.
        if (!empty($setup["synthetic_only"])) {
            $this->markTestSkipped("live entity test uses synthetic IDs from fixture — set HEATSTRESSWARNING_TEST_HEAT_STRESS_WARNING_EN_ENTID JSON to run live");
            return;
        }
        $client = $setup["client"];

        // Bootstrap entity data from existing test data.
        $heat_stress_warning_en_ref01_data_raw = Vs::items(Helpers::to_map(
            Vs::getpath($setup["data"], "existing.heat_stress_warning_en")));
        $heat_stress_warning_en_ref01_data = null;
        if (count($heat_stress_warning_en_ref01_data_raw) > 0) {
            $heat_stress_warning_en_ref01_data = Helpers::to_map($heat_stress_warning_en_ref01_data_raw[0][1]);
        }

        // LIST
        $heat_stress_warning_en_ref01_ent = $client->HeatStressWarningEn(null);
        $heat_stress_warning_en_ref01_match = [];

        [$heat_stress_warning_en_ref01_list_result, $err] = $heat_stress_warning_en_ref01_ent->list($heat_stress_warning_en_ref01_match, null);
        $this->assertNull($err);
        $this->assertIsArray($heat_stress_warning_en_ref01_list_result);

    }
}

function heat_stress_warning_en_basic_setup($extra)
{
    Runner::load_env_local();

    $entity_data_file = __DIR__ . '/../../.sdk/test/entity/heat_stress_warning_en/HeatStressWarningEnTestData.json';
    $entity_data_source = file_get_contents($entity_data_file);
    $entity_data = json_decode($entity_data_source, true);

    $options = [];
    $options["entity"] = $entity_data["existing"];

    $client = HeatStressWarningSDK::test($options, $extra);

    // Generate idmap.
    $idmap = [];
    foreach (["heat_stress_warning_en01", "heat_stress_warning_en02", "heat_stress_warning_en03"] as $k) {
        $idmap[$k] = strtoupper($k);
    }

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against synthetic
    // IDs from the fixture and 4xx's. Surface this so the test can skip.
    $entid_env_raw = getenv("HEATSTRESSWARNING_TEST_HEAT_STRESS_WARNING_EN_ENTID");
    $idmap_overridden = $entid_env_raw !== false && str_starts_with(trim($entid_env_raw), "{");

    $env = Runner::env_override([
        "HEATSTRESSWARNING_TEST_HEAT_STRESS_WARNING_EN_ENTID" => $idmap,
        "HEATSTRESSWARNING_TEST_LIVE" => "FALSE",
        "HEATSTRESSWARNING_TEST_EXPLAIN" => "FALSE",
    ]);

    $idmap_resolved = Helpers::to_map(
        $env["HEATSTRESSWARNING_TEST_HEAT_STRESS_WARNING_EN_ENTID"]);
    if ($idmap_resolved === null) {
        $idmap_resolved = Helpers::to_map($idmap);
    }

    if ($env["HEATSTRESSWARNING_TEST_LIVE"] === "TRUE") {
        $merged_opts = Vs::merge([
            [
            ],
            $extra ?? [],
        ]);
        $client = new HeatStressWarningSDK(Helpers::to_map($merged_opts));
    }

    $live = $env["HEATSTRESSWARNING_TEST_LIVE"] === "TRUE";
    return [
        "client" => $client,
        "data" => $entity_data,
        "idmap" => $idmap_resolved,
        "env" => $env,
        "explain" => $env["HEATSTRESSWARNING_TEST_EXPLAIN"] === "TRUE",
        "live" => $live,
        "synthetic_only" => $live && !$idmap_overridden,
        "now" => (int)(microtime(true) * 1000),
    ];
}
