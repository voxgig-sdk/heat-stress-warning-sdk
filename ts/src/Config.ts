
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


  main = {
    name: 'HeatStressWarning',
  }


  feature = {
     test:     {
      "options": {
        "active": false
      }
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
          "type": "`$STRING`"
        },
        {
          "name": "expiryTime",
          "type": "`$STRING`"
        },
        {
          "name": "heatIndex",
          "type": "`$NUMBER`"
        },
        {
          "name": "humidity",
          "type": "`$INTEGER`"
        },
        {
          "name": "issueTime",
          "type": "`$STRING`"
        },
        {
          "name": "recommendations",
          "type": "`$ARRAY`"
        },
        {
          "name": "temperature",
          "type": "`$NUMBER`"
        },
        {
          "name": "updateTime",
          "type": "`$STRING`"
        },
        {
          "name": "warningLevel",
          "type": "`$STRING`"
        },
        {
          "name": "warningMessage",
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
          "type": "`$STRING`"
        },
        {
          "name": "expiryTime",
          "type": "`$STRING`"
        },
        {
          "name": "heatIndex",
          "type": "`$NUMBER`"
        },
        {
          "name": "humidity",
          "type": "`$INTEGER`"
        },
        {
          "name": "issueTime",
          "type": "`$STRING`"
        },
        {
          "name": "recommendations",
          "type": "`$ARRAY`"
        },
        {
          "name": "temperature",
          "type": "`$NUMBER`"
        },
        {
          "name": "updateTime",
          "type": "`$STRING`"
        },
        {
          "name": "warningLevel",
          "type": "`$STRING`"
        },
        {
          "name": "warningMessage",
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
          "type": "`$STRING`"
        },
        {
          "name": "expiryTime",
          "type": "`$STRING`"
        },
        {
          "name": "heatIndex",
          "type": "`$NUMBER`"
        },
        {
          "name": "humidity",
          "type": "`$INTEGER`"
        },
        {
          "name": "issueTime",
          "type": "`$STRING`"
        },
        {
          "name": "recommendations",
          "type": "`$ARRAY`"
        },
        {
          "name": "temperature",
          "type": "`$NUMBER`"
        },
        {
          "name": "updateTime",
          "type": "`$STRING`"
        },
        {
          "name": "warningLevel",
          "type": "`$STRING`"
        },
        {
          "name": "warningMessage",
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

