# HeatStressWarning SDK configuration


_shared_config = None


def shared_config():
    """Return the process-wide config, built once on first use.

    The SDK reads the config on every request and never writes to it, so one
    instance is shared by every client rather than rebuilt per client.

    The returned dict is shared: treat it as read-only. Callers that need to
    mutate should use make_config, which always returns a fresh copy.
    """
    global _shared_config
    if _shared_config is None:
        _shared_config = make_config()
    return _shared_config


def make_config():
    """Build a fresh, fully materialised config dict.

    Every call rebuilds the whole structure, so prefer shared_config unless
    you need a private copy you intend to mutate.
    """
    return {
        "main": {
            "name": "HeatStressWarning",
            "slug": "heat-stress-warning",
            "version": "0.0.1",
            "target": "py",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
        "transport": "base",
      },
        },
        "options": {
            "base": "https://data.weather.gov.hk/weatherAPI",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "heat_stress_warning_en": {},
                "heat_stress_warning_sc": {},
                "heat_stress_warning_tc": {},
            },
        },
        "entity": {
      "heat_stress_warning_en": {
        "fields": [
          {
            "name": "effectiveTime",
            "short": "Time when the warning becomes effective",
            "type": "`$STRING`",
          },
          {
            "name": "expiryTime",
            "short": "Time when the warning expires",
            "type": "`$STRING`",
          },
          {
            "name": "heatIndex",
            "short": "Calculated heat index value",
            "type": "`$NUMBER`",
          },
          {
            "name": "humidity",
            "short": "Relative humidity percentage",
            "type": "`$INTEGER`",
          },
          {
            "name": "issueTime",
            "short": "Time when the warning was issued",
            "type": "`$STRING`",
          },
          {
            "name": "recommendations",
            "short": "List of recommended actions for workers",
            "type": "`$ARRAY`",
          },
          {
            "name": "temperature",
            "short": "Current temperature in degrees Celsius",
            "type": "`$NUMBER`",
          },
          {
            "name": "updateTime",
            "short": "Last update time of the data",
            "type": "`$STRING`",
          },
          {
            "name": "warningLevel",
            "short": "Current heat stress warning level",
            "type": "`$STRING`",
          },
          {
            "name": "warningMessage",
            "short": "Warning message with details and recommendations",
            "type": "`$STRING`",
          },
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
                "parts": [
                  "opendata",
                  "heat-stress-warning-en.json",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body.recommendations`",
                },
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "heat_stress_warning_sc": {
        "fields": [
          {
            "name": "effectiveTime",
            "short": "Time when the warning becomes effective",
            "type": "`$STRING`",
          },
          {
            "name": "expiryTime",
            "short": "Time when the warning expires",
            "type": "`$STRING`",
          },
          {
            "name": "heatIndex",
            "short": "Calculated heat index value",
            "type": "`$NUMBER`",
          },
          {
            "name": "humidity",
            "short": "Relative humidity percentage",
            "type": "`$INTEGER`",
          },
          {
            "name": "issueTime",
            "short": "Time when the warning was issued",
            "type": "`$STRING`",
          },
          {
            "name": "recommendations",
            "short": "List of recommended actions for workers",
            "type": "`$ARRAY`",
          },
          {
            "name": "temperature",
            "short": "Current temperature in degrees Celsius",
            "type": "`$NUMBER`",
          },
          {
            "name": "updateTime",
            "short": "Last update time of the data",
            "type": "`$STRING`",
          },
          {
            "name": "warningLevel",
            "short": "Current heat stress warning level",
            "type": "`$STRING`",
          },
          {
            "name": "warningMessage",
            "short": "Warning message with details and recommendations",
            "type": "`$STRING`",
          },
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
                "parts": [
                  "opendata",
                  "heat-stress-warning-sc.json",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body.recommendations`",
                },
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "heat_stress_warning_tc": {
        "fields": [
          {
            "name": "effectiveTime",
            "short": "Time when the warning becomes effective",
            "type": "`$STRING`",
          },
          {
            "name": "expiryTime",
            "short": "Time when the warning expires",
            "type": "`$STRING`",
          },
          {
            "name": "heatIndex",
            "short": "Calculated heat index value",
            "type": "`$NUMBER`",
          },
          {
            "name": "humidity",
            "short": "Relative humidity percentage",
            "type": "`$INTEGER`",
          },
          {
            "name": "issueTime",
            "short": "Time when the warning was issued",
            "type": "`$STRING`",
          },
          {
            "name": "recommendations",
            "short": "List of recommended actions for workers",
            "type": "`$ARRAY`",
          },
          {
            "name": "temperature",
            "short": "Current temperature in degrees Celsius",
            "type": "`$NUMBER`",
          },
          {
            "name": "updateTime",
            "short": "Last update time of the data",
            "type": "`$STRING`",
          },
          {
            "name": "warningLevel",
            "short": "Current heat stress warning level",
            "type": "`$STRING`",
          },
          {
            "name": "warningMessage",
            "short": "Warning message with details and recommendations",
            "type": "`$STRING`",
          },
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
                "parts": [
                  "opendata",
                  "heat-stress-warning-tc.json",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body.recommendations`",
                },
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
