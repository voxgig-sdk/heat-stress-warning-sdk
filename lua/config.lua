-- HeatStressWarning SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "HeatStressWarning",
    },
    feature = {
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
      },
    },
    options = {
      base = "https://data.weather.gov.hk/weatherAPI",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["heat_stress_warning_en"] = {},
        ["heat_stress_warning_sc"] = {},
        ["heat_stress_warning_tc"] = {},
      },
    },
    entity = {
      ["heat_stress_warning_en"] = {
        ["fields"] = {
          {
            ["name"] = "effectiveTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "expiryTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "heatIndex",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "humidity",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "issueTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "recommendations",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "temperature",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "updateTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "warningLevel",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "warningMessage",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "heat_stress_warning_en",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {},
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/opendata/heat-stress-warning-en.json",
                ["parts"] = {
                  "opendata",
                  "heat-stress-warning-en.json",
                },
                ["select"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body.recommendations`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["heat_stress_warning_sc"] = {
        ["fields"] = {
          {
            ["name"] = "effectiveTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "expiryTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "heatIndex",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "humidity",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "issueTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "recommendations",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "temperature",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "updateTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "warningLevel",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "warningMessage",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "heat_stress_warning_sc",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {},
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/opendata/heat-stress-warning-sc.json",
                ["parts"] = {
                  "opendata",
                  "heat-stress-warning-sc.json",
                },
                ["select"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body.recommendations`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["heat_stress_warning_tc"] = {
        ["fields"] = {
          {
            ["name"] = "effectiveTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "expiryTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "heatIndex",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "humidity",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "issueTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "recommendations",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "temperature",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "updateTime",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "warningLevel",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "warningMessage",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "heat_stress_warning_tc",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {},
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/opendata/heat-stress-warning-tc.json",
                ["parts"] = {
                  "opendata",
                  "heat-stress-warning-tc.json",
                },
                ["select"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body.recommendations`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
