# HeatStressWarning SDK configuration

module HeatStressWarningConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
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
              "name" => "effectiveTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "expiryTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "heatIndex",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "humidity",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "issueTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "recommendations",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "temperature",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "updateTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "warningLevel",
              "type" => "`$STRING`",
            },
            {
              "name" => "warningMessage",
              "type" => "`$STRING`",
            },
          ],
          "name" => "heat_stress_warning_en",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {},
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-en.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-en.json",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body.recommendations`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "heat_stress_warning_sc" => {
          "fields" => [
            {
              "name" => "effectiveTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "expiryTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "heatIndex",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "humidity",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "issueTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "recommendations",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "temperature",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "updateTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "warningLevel",
              "type" => "`$STRING`",
            },
            {
              "name" => "warningMessage",
              "type" => "`$STRING`",
            },
          ],
          "name" => "heat_stress_warning_sc",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {},
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-sc.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-sc.json",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body.recommendations`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "heat_stress_warning_tc" => {
          "fields" => [
            {
              "name" => "effectiveTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "expiryTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "heatIndex",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "humidity",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "issueTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "recommendations",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "temperature",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "updateTime",
              "type" => "`$STRING`",
            },
            {
              "name" => "warningLevel",
              "type" => "`$STRING`",
            },
            {
              "name" => "warningMessage",
              "type" => "`$STRING`",
            },
          ],
          "name" => "heat_stress_warning_tc",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {},
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/opendata/heat-stress-warning-tc.json",
                  "parts" => [
                    "opendata",
                    "heat-stress-warning-tc.json",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body.recommendations`",
                  },
                },
              ],
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
