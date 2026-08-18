<?php
declare(strict_types=1);

// HeatStressWarning SDK configuration

class HeatStressWarningConfig
{
    /** @var array<string,mixed>|null */
    private static ?array $shared_config = null;

    /**
     * Return the process-wide config, built once on first use. The SDK reads
     * the config on every request and never writes to it, so one instance is
     * shared by every client rather than rebuilt per client.
     *
     * PHP arrays are copy-on-write, so callers that do mutate the result get
     * their own copy and cannot disturb the shared one.
     */
    public static function shared_config(): array
    {
        if (self::$shared_config === null) {
            self::$shared_config = self::make_config();
        }
        return self::$shared_config;
    }

    /**
     * Build a fresh, fully materialised config array. Every call rebuilds the
     * whole structure, so prefer shared_config unless you need a private copy.
     */
    public static function make_config(): array
    {
        return [
            "main" => [
                "name" => "HeatStressWarning",
            ],
            "feature" => [
                "test" => [
          'options' => [
            'active' => false,
          ],
        ],
            ],
            "options" => [
                "base" => "https://data.weather.gov.hk/weatherAPI",
                "headers" => [
          'content-type' => 'application/json',
        ],
                "entity" => [
                    "heat_stress_warning_en" => [],
                    "heat_stress_warning_sc" => [],
                    "heat_stress_warning_tc" => [],
                ],
            ],
            "entity" => [
        'heat_stress_warning_en' => [
          'fields' => [
            [
              'name' => 'effectiveTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'expiryTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'heatIndex',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'humidity',
              'type' => '`$INTEGER`',
            ],
            [
              'name' => 'issueTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'recommendations',
              'type' => '`$ARRAY`',
            ],
            [
              'name' => 'temperature',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'updateTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningLevel',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningMessage',
              'type' => '`$STRING`',
            ],
          ],
          'name' => 'heat_stress_warning_en',
          'op' => [
            'list' => [
              'input' => 'data',
              'name' => 'list',
              'points' => [
                [
                  'args' => [],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/opendata/heat-stress-warning-en.json',
                  'parts' => [
                    'opendata',
                    'heat-stress-warning-en.json',
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body.recommendations`',
                  ],
                ],
              ],
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'heat_stress_warning_sc' => [
          'fields' => [
            [
              'name' => 'effectiveTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'expiryTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'heatIndex',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'humidity',
              'type' => '`$INTEGER`',
            ],
            [
              'name' => 'issueTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'recommendations',
              'type' => '`$ARRAY`',
            ],
            [
              'name' => 'temperature',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'updateTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningLevel',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningMessage',
              'type' => '`$STRING`',
            ],
          ],
          'name' => 'heat_stress_warning_sc',
          'op' => [
            'list' => [
              'input' => 'data',
              'name' => 'list',
              'points' => [
                [
                  'args' => [],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/opendata/heat-stress-warning-sc.json',
                  'parts' => [
                    'opendata',
                    'heat-stress-warning-sc.json',
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body.recommendations`',
                  ],
                ],
              ],
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'heat_stress_warning_tc' => [
          'fields' => [
            [
              'name' => 'effectiveTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'expiryTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'heatIndex',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'humidity',
              'type' => '`$INTEGER`',
            ],
            [
              'name' => 'issueTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'recommendations',
              'type' => '`$ARRAY`',
            ],
            [
              'name' => 'temperature',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'updateTime',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningLevel',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningMessage',
              'type' => '`$STRING`',
            ],
          ],
          'name' => 'heat_stress_warning_tc',
          'op' => [
            'list' => [
              'input' => 'data',
              'name' => 'list',
              'points' => [
                [
                  'args' => [],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/opendata/heat-stress-warning-tc.json',
                  'parts' => [
                    'opendata',
                    'heat-stress-warning-tc.json',
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body.recommendations`',
                  ],
                ],
              ],
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
      ],
        ];
    }


    public static function make_feature(string $name)
    {
        require_once __DIR__ . '/features.php';
        return HeatStressWarningFeatures::make_feature($name);
    }
}
