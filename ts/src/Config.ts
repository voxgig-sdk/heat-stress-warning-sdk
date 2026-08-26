
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature,

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }

  // False for a feature added at runtime via options.extend (station's
  // adopt path) - the constructor uses this to skip makeFeature for names
  // no generated class backs.
  hasFeature(this: any, fn: string) {
    return null != FEATURE_CLASS[fn]
  }


  main = {
    name: 'HeatStressWarning',
        slug: "heat-stress-warning",
    version: "0.0.1",
    target: "ts",

  }


  feature = {
     test:     {
      "options": {
        "active": false
      },
      "transport": "base"
    },

  }


  options = {
    base: "https://data.weather.gov.hk/weatherAPI",

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      heat_stress_warning_en: {
      },

      heat_stress_warning_sc: {
      },

      heat_stress_warning_tc: {
      },

    }
  }


  entity = {
    "heat_stress_warning_en": {
      "fields": [
        {
          "name": "effectiveTime",
          "short": "Time when the warning becomes effective",
          "type": "`$STRING`"
        },
        {
          "name": "expiryTime",
          "short": "Time when the warning expires",
          "type": "`$STRING`"
        },
        {
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
          "name": "temperature",
          "short": "Current temperature in degrees Celsius",
          "type": "`$NUMBER`"
        },
        {
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
              "parts": [
                "opendata",
                "heat-stress-warning-en.json"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body.recommendations`"
              }
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
          "name": "effectiveTime",
          "short": "Time when the warning becomes effective",
          "type": "`$STRING`"
        },
        {
          "name": "expiryTime",
          "short": "Time when the warning expires",
          "type": "`$STRING`"
        },
        {
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
          "name": "temperature",
          "short": "Current temperature in degrees Celsius",
          "type": "`$NUMBER`"
        },
        {
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
              "parts": [
                "opendata",
                "heat-stress-warning-sc.json"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body.recommendations`"
              }
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
          "name": "effectiveTime",
          "short": "Time when the warning becomes effective",
          "type": "`$STRING`"
        },
        {
          "name": "expiryTime",
          "short": "Time when the warning expires",
          "type": "`$STRING`"
        },
        {
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
          "name": "temperature",
          "short": "Current temperature in degrees Celsius",
          "type": "`$NUMBER`"
        },
        {
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
              "parts": [
                "opendata",
                "heat-stress-warning-tc.json"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body.recommendations`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

export {
  config
}

