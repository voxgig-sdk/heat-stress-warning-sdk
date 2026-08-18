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
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
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
            "type": "`$STRING`",
          },
          {
            "name": "expiryTime",
            "type": "`$STRING`",
          },
          {
            "name": "heatIndex",
            "type": "`$NUMBER`",
          },
          {
            "name": "humidity",
            "type": "`$INTEGER`",
          },
          {
            "name": "issueTime",
            "type": "`$STRING`",
          },
          {
            "name": "recommendations",
            "type": "`$ARRAY`",
          },
          {
            "name": "temperature",
            "type": "`$NUMBER`",
          },
          {
            "name": "updateTime",
            "type": "`$STRING`",
          },
          {
            "name": "warningLevel",
            "type": "`$STRING`",
          },
          {
            "name": "warningMessage",
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
            "type": "`$STRING`",
          },
          {
            "name": "expiryTime",
            "type": "`$STRING`",
          },
          {
            "name": "heatIndex",
            "type": "`$NUMBER`",
          },
          {
            "name": "humidity",
            "type": "`$INTEGER`",
          },
          {
            "name": "issueTime",
            "type": "`$STRING`",
          },
          {
            "name": "recommendations",
            "type": "`$ARRAY`",
          },
          {
            "name": "temperature",
            "type": "`$NUMBER`",
          },
          {
            "name": "updateTime",
            "type": "`$STRING`",
          },
          {
            "name": "warningLevel",
            "type": "`$STRING`",
          },
          {
            "name": "warningMessage",
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
            "type": "`$STRING`",
          },
          {
            "name": "expiryTime",
            "type": "`$STRING`",
          },
          {
            "name": "heatIndex",
            "type": "`$NUMBER`",
          },
          {
            "name": "humidity",
            "type": "`$INTEGER`",
          },
          {
            "name": "issueTime",
            "type": "`$STRING`",
          },
          {
            "name": "recommendations",
            "type": "`$ARRAY`",
          },
          {
            "name": "temperature",
            "type": "`$NUMBER`",
          },
          {
            "name": "updateTime",
            "type": "`$STRING`",
          },
          {
            "name": "warningLevel",
            "type": "`$STRING`",
          },
          {
            "name": "warningMessage",
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
