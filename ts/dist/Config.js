"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.FEATURE_PLUGINS = exports.config = void 0;
const RatelimitFeature_1 = require("./feature/ratelimit/RatelimitFeature");
const RetryFeature_1 = require("./feature/retry/RetryFeature");
const TestFeature_1 = require("./feature/test/TestFeature");
const TimeoutFeature_1 = require("./feature/timeout/TimeoutFeature");
const FEATURE_CLASS = {
    ratelimit: RatelimitFeature_1.RatelimitFeature,
    retry: RetryFeature_1.RetryFeature,
    test: TestFeature_1.TestFeature,
    timeout: TimeoutFeature_1.TimeoutFeature,
};
// Per-feature plugin DEFINITIONS (voxgig/plugin `Definition` values), from
// the model's active plugin groups. A feature that takes a `plugins` option
// (secrets over sekreto) reads its own entry; a feature with no plugins has
// none. Named imports above make each definition statically reachable, so
// an SDK carries exactly the plugin modules its model selects — the same
// leanness the old side-effect registry imports bought, without a registry.
const FEATURE_PLUGINS = {};
exports.FEATURE_PLUGINS = FEATURE_PLUGINS;
class Config {
    makeFeature(fn) {
        const fc = FEATURE_CLASS[fn];
        const fi = new fc();
        // TODO: errors etc
        return fi;
    }
    // False for a feature added at runtime via options.extend (station's
    // adopt path) - the constructor uses this to skip makeFeature for names
    // no generated class backs.
    hasFeature(fn) {
        return null != FEATURE_CLASS[fn];
    }
    main = {
        name: 'HeatStressWarning',
        slug: "heat-stress-warning",
        version: "0.0.1",
        target: "ts",
    };
    feature = {
        ratelimit: {
            "options": {
                "active": false,
                "burst": 5,
                "rate": 5
            },
            "optspec": {
                "now": "`$FUNCTION`",
                "sleep": "`$FUNCTION`"
            },
            "strict": false,
            "transport": "wrap"
        },
        retry: {
            "options": {
                "active": false,
                "factor": 2,
                "maxDelay": 2000,
                "minDelay": 50,
                "retries": 2,
                "statuses": [
                    408,
                    425,
                    429,
                    500,
                    502,
                    503,
                    504
                ]
            },
            "optspec": {
                "jitter": "`$BOOLEAN`",
                "sleep": "`$FUNCTION`"
            },
            "strict": false,
            "transport": "wrap"
        },
        test: {
            "options": {
                "active": false
            },
            "optspec": {
                "entity": "`$MAP`",
                "net": "`$MAP`"
            },
            "strict": false,
            "transport": "base"
        },
        timeout: {
            "options": {
                "active": false,
                "ms": 30000
            },
            "optspec": {
                "clearTimer": "`$FUNCTION`",
                "setTimer": "`$FUNCTION`"
            },
            "strict": false,
            "transport": "wrap"
        },
    };
    options = {
        base: "https://data.weather.gov.hk/weatherAPI",
        headers: {
            "content-type": "application/json"
        },
        entity: {
            heat_stress_warning_en: {},
            heat_stress_warning_sc: {},
            heat_stress_warning_tc: {},
        }
    };
    entity = {
        "heat_stress_warning_en": {
            "fields": [
                {
                    "format": "date-time",
                    "name": "effectiveTime",
                    "short": "Time when the warning becomes effective",
                    "type": "`$STRING`"
                },
                {
                    "format": "date-time",
                    "name": "expiryTime",
                    "short": "Time when the warning expires",
                    "type": "`$STRING`"
                },
                {
                    "format": "float",
                    "name": "heatIndex",
                    "short": "Calculated heat index value",
                    "type": "`$NUMBER`"
                },
                {
                    "name": "humidity",
                    "short": "Relative humidity percentage",
                    "type": "`$INTEGER`"
                },
                {
                    "format": "date-time",
                    "name": "issueTime",
                    "short": "Time when the warning was issued",
                    "type": "`$STRING`"
                },
                {
                    "name": "recommendations",
                    "short": "List of recommended actions for workers",
                    "type": "`$ARRAY`"
                },
                {
                    "format": "float",
                    "name": "temperature",
                    "short": "Current temperature in degrees Celsius",
                    "type": "`$NUMBER`"
                },
                {
                    "format": "date-time",
                    "name": "updateTime",
                    "short": "Last update time of the data",
                    "type": "`$STRING`"
                },
                {
                    "name": "warningLevel",
                    "short": "Current heat stress warning level",
                    "type": "`$STRING`"
                },
                {
                    "name": "warningMessage",
                    "short": "Warning message with details and recommendations",
                    "type": "`$STRING`"
                }
            ],
            "name": "heat_stress_warning_en",
            "op": {
                "list": {
                    "input": "data",
                    "name": "list",
                    "points": [
                        {
                            "args": {},
                            "kind": "http",
                            "method": "GET",
                            "orig": "/opendata/heat-stress-warning-en.json",
                            "segments": [
                                {
                                    "lit": "opendata"
                                },
                                {
                                    "lit": "heat-stress-warning-en.json"
                                }
                            ],
                            "select": {},
                            "transform": {
                                "req": "`reqdata`",
                                "res": "`body.recommendations`"
                            },
                            "parts": [
                                "opendata",
                                "heat-stress-warning-en.json"
                            ]
                        }
                    ]
                }
            },
            "relations": {
                "ancestors": []
            }
        },
        "heat_stress_warning_sc": {
            "fields": [
                {
                    "format": "date-time",
                    "name": "effectiveTime",
                    "short": "Time when the warning becomes effective",
                    "type": "`$STRING`"
                },
                {
                    "format": "date-time",
                    "name": "expiryTime",
                    "short": "Time when the warning expires",
                    "type": "`$STRING`"
                },
                {
                    "format": "float",
                    "name": "heatIndex",
                    "short": "Calculated heat index value",
                    "type": "`$NUMBER`"
                },
                {
                    "name": "humidity",
                    "short": "Relative humidity percentage",
                    "type": "`$INTEGER`"
                },
                {
                    "format": "date-time",
                    "name": "issueTime",
                    "short": "Time when the warning was issued",
                    "type": "`$STRING`"
                },
                {
                    "name": "recommendations",
                    "short": "List of recommended actions for workers",
                    "type": "`$ARRAY`"
                },
                {
                    "format": "float",
                    "name": "temperature",
                    "short": "Current temperature in degrees Celsius",
                    "type": "`$NUMBER`"
                },
                {
                    "format": "date-time",
                    "name": "updateTime",
                    "short": "Last update time of the data",
                    "type": "`$STRING`"
                },
                {
                    "name": "warningLevel",
                    "short": "Current heat stress warning level",
                    "type": "`$STRING`"
                },
                {
                    "name": "warningMessage",
                    "short": "Warning message with details and recommendations",
                    "type": "`$STRING`"
                }
            ],
            "name": "heat_stress_warning_sc",
            "op": {
                "list": {
                    "input": "data",
                    "name": "list",
                    "points": [
                        {
                            "args": {},
                            "kind": "http",
                            "method": "GET",
                            "orig": "/opendata/heat-stress-warning-sc.json",
                            "segments": [
                                {
                                    "lit": "opendata"
                                },
                                {
                                    "lit": "heat-stress-warning-sc.json"
                                }
                            ],
                            "select": {},
                            "transform": {
                                "req": "`reqdata`",
                                "res": "`body.recommendations`"
                            },
                            "parts": [
                                "opendata",
                                "heat-stress-warning-sc.json"
                            ]
                        }
                    ]
                }
            },
            "relations": {
                "ancestors": []
            }
        },
        "heat_stress_warning_tc": {
            "fields": [
                {
                    "format": "date-time",
                    "name": "effectiveTime",
                    "short": "Time when the warning becomes effective",
                    "type": "`$STRING`"
                },
                {
                    "format": "date-time",
                    "name": "expiryTime",
                    "short": "Time when the warning expires",
                    "type": "`$STRING`"
                },
                {
                    "format": "float",
                    "name": "heatIndex",
                    "short": "Calculated heat index value",
                    "type": "`$NUMBER`"
                },
                {
                    "name": "humidity",
                    "short": "Relative humidity percentage",
                    "type": "`$INTEGER`"
                },
                {
                    "format": "date-time",
                    "name": "issueTime",
                    "short": "Time when the warning was issued",
                    "type": "`$STRING`"
                },
                {
                    "name": "recommendations",
                    "short": "List of recommended actions for workers",
                    "type": "`$ARRAY`"
                },
                {
                    "format": "float",
                    "name": "temperature",
                    "short": "Current temperature in degrees Celsius",
                    "type": "`$NUMBER`"
                },
                {
                    "format": "date-time",
                    "name": "updateTime",
                    "short": "Last update time of the data",
                    "type": "`$STRING`"
                },
                {
                    "name": "warningLevel",
                    "short": "Current heat stress warning level",
                    "type": "`$STRING`"
                },
                {
                    "name": "warningMessage",
                    "short": "Warning message with details and recommendations",
                    "type": "`$STRING`"
                }
            ],
            "name": "heat_stress_warning_tc",
            "op": {
                "list": {
                    "input": "data",
                    "name": "list",
                    "points": [
                        {
                            "args": {},
                            "kind": "http",
                            "method": "GET",
                            "orig": "/opendata/heat-stress-warning-tc.json",
                            "segments": [
                                {
                                    "lit": "opendata"
                                },
                                {
                                    "lit": "heat-stress-warning-tc.json"
                                }
                            ],
                            "select": {},
                            "transform": {
                                "req": "`reqdata`",
                                "res": "`body.recommendations`"
                            },
                            "parts": [
                                "opendata",
                                "heat-stress-warning-tc.json"
                            ]
                        }
                    ]
                }
            },
            "relations": {
                "ancestors": []
            }
        }
    };
}
const config = new Config();
exports.config = config;
//# sourceMappingURL=Config.js.map