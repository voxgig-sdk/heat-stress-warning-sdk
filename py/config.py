# HeatStressWarning SDK configuration


def make_config():
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
            "auth": {
                "prefix": "Bearer",
            },
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
            "active": True,
            "name": "effective_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "expiry_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "heat_index",
            "req": False,
            "type": "`$NUMBER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "humidity",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "issue_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "recommendation",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "temperature",
            "req": False,
            "type": "`$NUMBER`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "update_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 7,
          },
          {
            "active": True,
            "name": "warning_level",
            "req": False,
            "type": "`$STRING`",
            "index$": 8,
          },
          {
            "active": True,
            "name": "warning_message",
            "req": False,
            "type": "`$STRING`",
            "index$": 9,
          },
        ],
        "name": "heat_stress_warning_en",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "active": True,
                "args": {},
                "method": "GET",
                "orig": "/opendata/heat-stress-warning-en.json",
                "parts": [
                  "opendata",
                  "heat-stress-warning-en.json",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "list",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "heat_stress_warning_sc": {
        "fields": [
          {
            "active": True,
            "name": "effective_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "expiry_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "heat_index",
            "req": False,
            "type": "`$NUMBER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "humidity",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "issue_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "recommendation",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "temperature",
            "req": False,
            "type": "`$NUMBER`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "update_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 7,
          },
          {
            "active": True,
            "name": "warning_level",
            "req": False,
            "type": "`$STRING`",
            "index$": 8,
          },
          {
            "active": True,
            "name": "warning_message",
            "req": False,
            "type": "`$STRING`",
            "index$": 9,
          },
        ],
        "name": "heat_stress_warning_sc",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "active": True,
                "args": {},
                "method": "GET",
                "orig": "/opendata/heat-stress-warning-sc.json",
                "parts": [
                  "opendata",
                  "heat-stress-warning-sc.json",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "list",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "heat_stress_warning_tc": {
        "fields": [
          {
            "active": True,
            "name": "effective_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "expiry_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "heat_index",
            "req": False,
            "type": "`$NUMBER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "humidity",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "issue_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "recommendation",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "temperature",
            "req": False,
            "type": "`$NUMBER`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "update_time",
            "req": False,
            "type": "`$STRING`",
            "index$": 7,
          },
          {
            "active": True,
            "name": "warning_level",
            "req": False,
            "type": "`$STRING`",
            "index$": 8,
          },
          {
            "active": True,
            "name": "warning_message",
            "req": False,
            "type": "`$STRING`",
            "index$": 9,
          },
        ],
        "name": "heat_stress_warning_tc",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "active": True,
                "args": {},
                "method": "GET",
                "orig": "/opendata/heat-stress-warning-tc.json",
                "parts": [
                  "opendata",
                  "heat-stress-warning-tc.json",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "list",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
