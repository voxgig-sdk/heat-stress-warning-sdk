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
              "active" => true,
              "name" => "effective_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "expiry_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "heat_index",
              "req" => false,
              "type" => "`$NUMBER`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "humidity",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "issue_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "recommendation",
              "req" => false,
              "type" => "`$ARRAY`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "temperature",
              "req" => false,
              "type" => "`$NUMBER`",
              "index$" => 6,
            },
            {
              "active" => true,
              "name" => "update_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 7,
            },
            {
              "active" => true,
              "name" => "warning_level",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 8,
            },
            {
              "active" => true,
              "name" => "warning_message",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 9,
            },
          ],
          "name" => "heat_stress_warning_en",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {},
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-en.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-en.json",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
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
              "active" => true,
              "name" => "effective_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "expiry_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "heat_index",
              "req" => false,
              "type" => "`$NUMBER`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "humidity",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "issue_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "recommendation",
              "req" => false,
              "type" => "`$ARRAY`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "temperature",
              "req" => false,
              "type" => "`$NUMBER`",
              "index$" => 6,
            },
            {
              "active" => true,
              "name" => "update_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 7,
            },
            {
              "active" => true,
              "name" => "warning_level",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 8,
            },
            {
              "active" => true,
              "name" => "warning_message",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 9,
            },
          ],
          "name" => "heat_stress_warning_sc",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {},
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-sc.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-sc.json",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
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
              "active" => true,
              "name" => "effective_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "expiry_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "heat_index",
              "req" => false,
              "type" => "`$NUMBER`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "humidity",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "issue_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "recommendation",
              "req" => false,
              "type" => "`$ARRAY`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "temperature",
              "req" => false,
              "type" => "`$NUMBER`",
              "index$" => 6,
            },
            {
              "active" => true,
              "name" => "update_time",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 7,
            },
            {
              "active" => true,
              "name" => "warning_level",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 8,
            },
            {
              "active" => true,
              "name" => "warning_message",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 9,
            },
          ],
          "name" => "heat_stress_warning_tc",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {},
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-tc.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-tc.json",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
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
