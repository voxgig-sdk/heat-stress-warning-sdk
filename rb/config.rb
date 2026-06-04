# HeatStressWarning SDK configuration

module HeatStressWarningConfig
  def self.make_config
    {
      "main" => {
        "name" => "HeatStressWarning",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://data.weather.gov.hk/weatherAPI",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "heat_stress_warning_en" => {},
          "heat_stress_warning_sc" => {},
          "heat_stress_warning_tc" => {},
        },
      },
      "entity" => {
        "heat_stress_warning_en" => {
          "fields" => [
            {
              "name" => "effective_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 0,
            },
            {
              "name" => "expiry_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 1,
            },
            {
              "name" => "heat_index",
              "req" => false,
              "type" => "`$NUMBER`",
              "active" => true,
              "index$" => 2,
            },
            {
              "name" => "humidity",
              "req" => false,
              "type" => "`$INTEGER`",
              "active" => true,
              "index$" => 3,
            },
            {
              "name" => "issue_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 4,
            },
            {
              "name" => "recommendation",
              "req" => false,
              "type" => "`$ARRAY`",
              "active" => true,
              "index$" => 5,
            },
            {
              "name" => "temperature",
              "req" => false,
              "type" => "`$NUMBER`",
              "active" => true,
              "index$" => 6,
            },
            {
              "name" => "update_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 7,
            },
            {
              "name" => "warning_level",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 8,
            },
            {
              "name" => "warning_message",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 9,
            },
          ],
          "name" => "heat_stress_warning_en",
          "op" => {
            "list" => {
              "name" => "list",
              "points" => [
                {
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-en.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-en.json",
                  ],
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "active" => true,
                  "args" => {},
                  "select" => {},
                  "index$" => 0,
                },
              ],
              "input" => "data",
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "heat_stress_warning_sc" => {
          "fields" => [
            {
              "name" => "effective_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 0,
            },
            {
              "name" => "expiry_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 1,
            },
            {
              "name" => "heat_index",
              "req" => false,
              "type" => "`$NUMBER`",
              "active" => true,
              "index$" => 2,
            },
            {
              "name" => "humidity",
              "req" => false,
              "type" => "`$INTEGER`",
              "active" => true,
              "index$" => 3,
            },
            {
              "name" => "issue_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 4,
            },
            {
              "name" => "recommendation",
              "req" => false,
              "type" => "`$ARRAY`",
              "active" => true,
              "index$" => 5,
            },
            {
              "name" => "temperature",
              "req" => false,
              "type" => "`$NUMBER`",
              "active" => true,
              "index$" => 6,
            },
            {
              "name" => "update_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 7,
            },
            {
              "name" => "warning_level",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 8,
            },
            {
              "name" => "warning_message",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 9,
            },
          ],
          "name" => "heat_stress_warning_sc",
          "op" => {
            "list" => {
              "name" => "list",
              "points" => [
                {
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-sc.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-sc.json",
                  ],
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "active" => true,
                  "args" => {},
                  "select" => {},
                  "index$" => 0,
                },
              ],
              "input" => "data",
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "heat_stress_warning_tc" => {
          "fields" => [
            {
              "name" => "effective_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 0,
            },
            {
              "name" => "expiry_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 1,
            },
            {
              "name" => "heat_index",
              "req" => false,
              "type" => "`$NUMBER`",
              "active" => true,
              "index$" => 2,
            },
            {
              "name" => "humidity",
              "req" => false,
              "type" => "`$INTEGER`",
              "active" => true,
              "index$" => 3,
            },
            {
              "name" => "issue_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 4,
            },
            {
              "name" => "recommendation",
              "req" => false,
              "type" => "`$ARRAY`",
              "active" => true,
              "index$" => 5,
            },
            {
              "name" => "temperature",
              "req" => false,
              "type" => "`$NUMBER`",
              "active" => true,
              "index$" => 6,
            },
            {
              "name" => "update_time",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 7,
            },
            {
              "name" => "warning_level",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 8,
            },
            {
              "name" => "warning_message",
              "req" => false,
              "type" => "`$STRING`",
              "active" => true,
              "index$" => 9,
            },
          ],
          "name" => "heat_stress_warning_tc",
          "op" => {
            "list" => {
              "name" => "list",
              "points" => [
                {
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-tc.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-tc.json",
                  ],
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "active" => true,
                  "args" => {},
                  "select" => {},
                  "index$" => 0,
                },
              ],
              "input" => "data",
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    HeatStressWarningFeatures.make_feature(name)
  end
end
