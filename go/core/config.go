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
			"slug": "heat-stress-warning",
			"version": "0.0.1",
			"target": "go",
		},
		"feature": map[string]any{
			"test": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"transport": "base",
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
						"format": "date-time",
						"name": "effectiveTime",
						"short": "Time when the warning becomes effective",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "expiryTime",
						"short": "Time when the warning expires",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "float",
						"name": "heatIndex",
						"short": "Calculated heat index value",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "humidity",
						"short": "Relative humidity percentage",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "issueTime",
						"short": "Time when the warning was issued",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "recommendations",
						"short": "List of recommended actions for workers",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"format": "float",
						"name": "temperature",
						"short": "Current temperature in degrees Celsius",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "updateTime",
						"short": "Last update time of the data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningLevel",
						"short": "Current heat stress warning level",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningMessage",
						"short": "Warning message with details and recommendations",
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
								"segments": []any{
									map[string]any{
										"lit": "opendata",
									},
									map[string]any{
										"lit": "heat-stress-warning-en.json",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.recommendations`",
								},
								"parts": []any{
									"opendata",
									"heat-stress-warning-en.json",
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
						"format": "date-time",
						"name": "effectiveTime",
						"short": "Time when the warning becomes effective",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "expiryTime",
						"short": "Time when the warning expires",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "float",
						"name": "heatIndex",
						"short": "Calculated heat index value",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "humidity",
						"short": "Relative humidity percentage",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "issueTime",
						"short": "Time when the warning was issued",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "recommendations",
						"short": "List of recommended actions for workers",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"format": "float",
						"name": "temperature",
						"short": "Current temperature in degrees Celsius",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "updateTime",
						"short": "Last update time of the data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningLevel",
						"short": "Current heat stress warning level",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningMessage",
						"short": "Warning message with details and recommendations",
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
								"segments": []any{
									map[string]any{
										"lit": "opendata",
									},
									map[string]any{
										"lit": "heat-stress-warning-sc.json",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.recommendations`",
								},
								"parts": []any{
									"opendata",
									"heat-stress-warning-sc.json",
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
						"format": "date-time",
						"name": "effectiveTime",
						"short": "Time when the warning becomes effective",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "expiryTime",
						"short": "Time when the warning expires",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "float",
						"name": "heatIndex",
						"short": "Calculated heat index value",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "humidity",
						"short": "Relative humidity percentage",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "issueTime",
						"short": "Time when the warning was issued",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "recommendations",
						"short": "List of recommended actions for workers",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"format": "float",
						"name": "temperature",
						"short": "Current temperature in degrees Celsius",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "updateTime",
						"short": "Last update time of the data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningLevel",
						"short": "Current heat stress warning level",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warningMessage",
						"short": "Warning message with details and recommendations",
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
								"segments": []any{
									map[string]any{
										"lit": "opendata",
									},
									map[string]any{
										"lit": "heat-stress-warning-tc.json",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.recommendations`",
								},
								"parts": []any{
									"opendata",
									"heat-stress-warning-tc.json",
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

// The plugin definitions the model selected per feature, as []any so a
// feature package can consume them without core naming its types. Empty
// when no active feature declares active plugin groups for this target.
var featurePlugins = map[string][]any{
}

// FeaturePlugins is the definitions list for one feature's chain.
func FeaturePlugins(name string) []any {
	return featurePlugins[name]
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
