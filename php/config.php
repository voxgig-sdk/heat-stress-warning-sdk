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
                "slug" => "heat-stress-warning",
                "version" => "0.0.1",
                "target" => "php",
            ],
            "feature" => [
                "ratelimit" => [
          'options' => [
            'active' => false,
            'burst' => 5,
            'rate' => 5,
          ],
          'optspec' => [
            'now' => '`$FUNCTION`',
            'sleep' => '`$FUNCTION`',
          ],
          'strict' => false,
          'transport' => 'wrap',
        ],
                "retry" => [
          'options' => [
            'active' => false,
            'factor' => 2,
            'maxDelay' => 2000,
            'minDelay' => 50,
            'retries' => 2,
            'statuses' => [
              408,
              425,
              429,
              500,
              502,
              503,
              504,
            ],
          ],
          'optspec' => [
            'jitter' => '`$BOOLEAN`',
            'sleep' => '`$FUNCTION`',
          ],
          'strict' => false,
          'transport' => 'wrap',
        ],
                "test" => [
          'options' => [
            'active' => false,
          ],
          'optspec' => [
            'entity' => '`$MAP`',
            'net' => '`$MAP`',
          ],
          'strict' => false,
          'transport' => 'base',
        ],
                "timeout" => [
          'options' => [
            'active' => false,
            'ms' => 30000,
          ],
          'optspec' => [
            'clearTimer' => '`$FUNCTION`',
            'setTimer' => '`$FUNCTION`',
          ],
          'strict' => false,
          'transport' => 'wrap',
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
              'format' => 'date-time',
              'name' => 'effectiveTime',
              'short' => 'Time when the warning becomes effective',
              'type' => '`$STRING`',
            ],
            [
              'format' => 'date-time',
              'name' => 'expiryTime',
              'short' => 'Time when the warning expires',
              'type' => '`$STRING`',
            ],
            [
              'format' => 'float',
              'name' => 'heatIndex',
              'short' => 'Calculated heat index value',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'humidity',
              'short' => 'Relative humidity percentage',
              'type' => '`$INTEGER`',
            ],
            [
              'format' => 'date-time',
              'name' => 'issueTime',
              'short' => 'Time when the warning was issued',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'recommendations',
              'short' => 'List of recommended actions for workers',
              'type' => '`$ARRAY`',
            ],
            [
              'format' => 'float',
              'name' => 'temperature',
              'short' => 'Current temperature in degrees Celsius',
              'type' => '`$NUMBER`',
            ],
            [
              'format' => 'date-time',
              'name' => 'updateTime',
              'short' => 'Last update time of the data',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningLevel',
              'short' => 'Current heat stress warning level',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningMessage',
              'short' => 'Warning message with details and recommendations',
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
                  'segments' => [
                    [
                      'lit' => 'opendata',
                    ],
                    [
                      'lit' => 'heat-stress-warning-en.json',
                    ],
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body.recommendations`',
                  ],
                  'parts' => [
                    'opendata',
                    'heat-stress-warning-en.json',
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
              'format' => 'date-time',
              'name' => 'effectiveTime',
              'short' => 'Time when the warning becomes effective',
              'type' => '`$STRING`',
            ],
            [
              'format' => 'date-time',
              'name' => 'expiryTime',
              'short' => 'Time when the warning expires',
              'type' => '`$STRING`',
            ],
            [
              'format' => 'float',
              'name' => 'heatIndex',
              'short' => 'Calculated heat index value',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'humidity',
              'short' => 'Relative humidity percentage',
              'type' => '`$INTEGER`',
            ],
            [
              'format' => 'date-time',
              'name' => 'issueTime',
              'short' => 'Time when the warning was issued',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'recommendations',
              'short' => 'List of recommended actions for workers',
              'type' => '`$ARRAY`',
            ],
            [
              'format' => 'float',
              'name' => 'temperature',
              'short' => 'Current temperature in degrees Celsius',
              'type' => '`$NUMBER`',
            ],
            [
              'format' => 'date-time',
              'name' => 'updateTime',
              'short' => 'Last update time of the data',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningLevel',
              'short' => 'Current heat stress warning level',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningMessage',
              'short' => 'Warning message with details and recommendations',
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
                  'segments' => [
                    [
                      'lit' => 'opendata',
                    ],
                    [
                      'lit' => 'heat-stress-warning-sc.json',
                    ],
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body.recommendations`',
                  ],
                  'parts' => [
                    'opendata',
                    'heat-stress-warning-sc.json',
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
              'format' => 'date-time',
              'name' => 'effectiveTime',
              'short' => 'Time when the warning becomes effective',
              'type' => '`$STRING`',
            ],
            [
              'format' => 'date-time',
              'name' => 'expiryTime',
              'short' => 'Time when the warning expires',
              'type' => '`$STRING`',
            ],
            [
              'format' => 'float',
              'name' => 'heatIndex',
              'short' => 'Calculated heat index value',
              'type' => '`$NUMBER`',
            ],
            [
              'name' => 'humidity',
              'short' => 'Relative humidity percentage',
              'type' => '`$INTEGER`',
            ],
            [
              'format' => 'date-time',
              'name' => 'issueTime',
              'short' => 'Time when the warning was issued',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'recommendations',
              'short' => 'List of recommended actions for workers',
              'type' => '`$ARRAY`',
            ],
            [
              'format' => 'float',
              'name' => 'temperature',
              'short' => 'Current temperature in degrees Celsius',
              'type' => '`$NUMBER`',
            ],
            [
              'format' => 'date-time',
              'name' => 'updateTime',
              'short' => 'Last update time of the data',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningLevel',
              'short' => 'Current heat stress warning level',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'warningMessage',
              'short' => 'Warning message with details and recommendations',
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
                  'segments' => [
                    [
                      'lit' => 'opendata',
                    ],
                    [
                      'lit' => 'heat-stress-warning-tc.json',
                    ],
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body.recommendations`',
                  ],
                  'parts' => [
                    'opendata',
                    'heat-stress-warning-tc.json',
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
