package core

import (
	"sync"
)

// MakeConfig builds a fresh, fully materialised config map. Every call
// rebuilds the whole structure, so prefer SharedConfig unless you need a
// private copy you intend to mutate.
func MakeConfig() map[string]any {
	return map[string]any{
		"main": map[string]any{
			"name": "HeatStressWarning",
		},
		"feature": map[string]any{
			"test": map[string]any{
				"options": map[string]any{
					"active": false,
				},
			},
		},
		"options": map[string]any{
			"base": "https://data.weather.gov.hk/weatherAPI",
			"headers": map[string]any{
				"content-type": "application/json",
			},
			"entity": map[string]any{
				"heat_stress_warning_en": map[string]any{},
				"heat_stress_warning_sc": map[string]any{},
				"heat_stress_warning_tc": map[string]any{},
			},
		},
		"entity": map[string]any{
			"heat_stress_warning_en": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "effectiveTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "expiryTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "heatIndex",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "humidity",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "issueTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "recommendations",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "temperature",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "updateTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningLevel",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningMessage",
						"type": "`$STRING`",
					},
				},
				"name": "heat_stress_warning_en",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "GET",
								"orig": "/opendata/heat-stress-warning-en.json",
								"parts": []any{
									"opendata",
									"heat-stress-warning-en.json",
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.recommendations`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"heat_stress_warning_sc": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "effectiveTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "expiryTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "heatIndex",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "humidity",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "issueTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "recommendations",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "temperature",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "updateTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningLevel",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningMessage",
						"type": "`$STRING`",
					},
				},
				"name": "heat_stress_warning_sc",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "GET",
								"orig": "/opendata/heat-stress-warning-sc.json",
								"parts": []any{
									"opendata",
									"heat-stress-warning-sc.json",
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.recommendations`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"heat_stress_warning_tc": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "effectiveTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "expiryTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "heatIndex",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "humidity",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "issueTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "recommendations",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "temperature",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "updateTime",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningLevel",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningMessage",
						"type": "`$STRING`",
					},
				},
				"name": "heat_stress_warning_tc",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "GET",
								"orig": "/opendata/heat-stress-warning-tc.json",
								"parts": []any{
									"opendata",
									"heat-stress-warning-tc.json",
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.recommendations`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
		},
	}
}

var (
	sharedConfigOnce sync.Once
	sharedConfigVal  map[string]any
)

// SharedConfig returns the process-wide config, built once on first use.
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client.
//
// The returned map is shared: treat it as read-only. Callers that need to
// mutate should use MakeConfig, which always returns a fresh copy.
func SharedConfig() map[string]any {
	sharedConfigOnce.Do(func() {
		sharedConfigVal = MakeConfig()
	})
	return sharedConfigVal
}

func makeFeature(name string) Feature {
	switch name {
	case "test":
		if NewTestFeatureFunc != nil {
			return NewTestFeatureFunc()
		}
	default:
		if NewBaseFeatureFunc != nil {
			return NewBaseFeatureFunc()
		}
	}
	return nil
}
