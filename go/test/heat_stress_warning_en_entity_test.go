package sdktest

import (
	"encoding/json"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	sdk "github.com/voxgig-sdk/heat-stress-warning-sdk"
	"github.com/voxgig-sdk/heat-stress-warning-sdk/core"

	vs "github.com/voxgig/struct"
)

func TestHeatStressWarningEnEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.HeatStressWarningEn(nil)
		if ent == nil {
			t.Fatal("expected non-nil HeatStressWarningEnEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := heat_stress_warning_enBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"list"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "heat_stress_warning_en." + _op, _mode); _shouldSkip {
				if _reason == "" {
					_reason = "skipped via sdk-test-control.json"
				}
				t.Skip(_reason)
				return
			}
		}
		// The basic flow consumes synthetic IDs from the fixture. In live mode
		// without an *_ENTID env override, those IDs hit the live API and 4xx.
		if setup.syntheticOnly {
			t.Skip("live entity test uses synthetic IDs from fixture — set HEATSTRESSWARNING_TEST_HEAT_STRESS_WARNING_EN_ENTID JSON to run live")
			return
		}
		client := setup.client

		// Bootstrap entity data from existing test data (no create step in flow).
		heatStressWarningEnRef01DataRaw := vs.Items(core.ToMapAny(vs.GetPath("existing.heat_stress_warning_en", setup.data)))
		var heatStressWarningEnRef01Data map[string]any
		if len(heatStressWarningEnRef01DataRaw) > 0 {
			heatStressWarningEnRef01Data = core.ToMapAny(heatStressWarningEnRef01DataRaw[0][1])
		}
		// Discard guards against Go's unused-var check when the flow's steps
		// happen not to consume the bootstrap data (e.g. list-only flows).
		_ = heatStressWarningEnRef01Data

		// LIST
		heatStressWarningEnRef01Ent := client.HeatStressWarningEn(nil)
		heatStressWarningEnRef01Match := map[string]any{}

		heatStressWarningEnRef01ListResult, err := heatStressWarningEnRef01Ent.List(heatStressWarningEnRef01Match, nil)
		if err != nil {
			t.Fatalf("list failed: %v", err)
		}
		_, heatStressWarningEnRef01ListOk := heatStressWarningEnRef01ListResult.([]any)
		if !heatStressWarningEnRef01ListOk {
			t.Fatalf("expected list result to be an array, got %T", heatStressWarningEnRef01ListResult)
		}

	})
}

func heat_stress_warning_enBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "heat_stress_warning_en", "HeatStressWarningEnTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read heat_stress_warning_en test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse heat_stress_warning_en test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"heat_stress_warning_en01", "heat_stress_warning_en02", "heat_stress_warning_en03"},
		map[string]any{
			"`$PACK`": []any{"", map[string]any{
				"`$KEY`": "`$COPY`",
				"`$VAL`": []any{"`$FORMAT`", "upper", "`$COPY`"},
			}},
		},
	)

	// Detect ENTID env override before envOverride consumes it. When live
	// mode is on without a real override, the basic test runs against synthetic
	// IDs from the fixture and 4xx's. Surface this so the test can skip.
	entidEnvRaw := os.Getenv("HEATSTRESSWARNING_TEST_HEAT_STRESS_WARNING_EN_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"HEATSTRESSWARNING_TEST_HEAT_STRESS_WARNING_EN_ENTID": idmap,
		"HEATSTRESSWARNING_TEST_LIVE":      "FALSE",
		"HEATSTRESSWARNING_TEST_EXPLAIN":   "FALSE",
		"HEATSTRESSWARNING_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["HEATSTRESSWARNING_TEST_HEAT_STRESS_WARNING_EN_ENTID"])
	if idmapResolved == nil {
		idmapResolved = core.ToMapAny(idmap)
	}

	if env["HEATSTRESSWARNING_TEST_LIVE"] == "TRUE" {
		mergedOpts := vs.Merge([]any{
			map[string]any{
				"apikey": env["HEATSTRESSWARNING_APIKEY"],
			},
			extra,
		})
		client = sdk.NewHeatStressWarningSDK(core.ToMapAny(mergedOpts))
	}

	live := env["HEATSTRESSWARNING_TEST_LIVE"] == "TRUE"
	return &entityTestSetup{
		client:        client,
		data:          entityData,
		idmap:         idmapResolved,
		env:           env,
		explain:       env["HEATSTRESSWARNING_TEST_EXPLAIN"] == "TRUE",
		live:          live,
		syntheticOnly: live && !idmapOverridden,
		now:           time.Now().UnixMilli(),
	}
}
