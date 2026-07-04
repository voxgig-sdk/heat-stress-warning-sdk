# HeatStressWarning PHP SDK Reference

Complete API reference for the HeatStressWarning PHP SDK.


## HeatStressWarningSDK

### Constructor

```php
require_once __DIR__ . '/heat-stress-warning_sdk.php';

$client = new HeatStressWarningSDK($options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$options` | `array` | SDK configuration options. |
| `$options["base"]` | `string` | Base URL for API requests. |
| `$options["prefix"]` | `string` | URL prefix appended after base. |
| `$options["suffix"]` | `string` | URL suffix appended after path. |
| `$options["headers"]` | `array` | Custom headers for all requests. |
| `$options["feature"]` | `array` | Feature configuration. |
| `$options["system"]` | `array` | System overrides (e.g. custom fetch). |


### Static Methods

#### `HeatStressWarningSDK::test($testopts = null, $sdkopts = null)`

Create a test client with mock features active. Both arguments may be `null`.

```php
$client = HeatStressWarningSDK::test();
```


### Instance Methods

#### `HeatStressWarningEn($data = null)`

Create a new `HeatStressWarningEnEntity` instance. Pass `null` for no initial data.

#### `HeatStressWarningSc($data = null)`

Create a new `HeatStressWarningScEntity` instance. Pass `null` for no initial data.

#### `HeatStressWarningTc($data = null)`

Create a new `HeatStressWarningTcEntity` instance. Pass `null` for no initial data.

#### `optionsMap(): array`

Return a deep copy of the current SDK options.

#### `getUtility(): ProjectNameUtility`

Return a copy of the SDK utility object.

#### `direct(array $fetchargs = []): array`

Make a direct HTTP request to any API endpoint. This is the raw-HTTP escape
hatch: it does **not** throw. It returns a result array
`["ok" => bool, "status" => int, "headers" => array, "data" => mixed]`, or
`["ok" => false, "err" => \Exception]` on failure. Branch on `$result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `$fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `$fetchargs["params"]` | `array` | Path parameter values for `{param}` substitution. |
| `$fetchargs["query"]` | `array` | Query string parameters. |
| `$fetchargs["headers"]` | `array` | Request headers (merged with defaults). |
| `$fetchargs["body"]` | `mixed` | Request body (arrays are JSON-serialized). |
| `$fetchargs["ctrl"]` | `array` | Control options. |

**Returns:** `array` — the result dict (see above); never throws.

#### `prepare(array $fetchargs = []): mixed`

Prepare a fetch definition without sending the request. Returns the
`$fetchdef` array. Throws on error.


---

## HeatStressWarningEnEntity

```php
$heat_stress_warning_en = $client->heat_stress_warning_en();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `effective_time` | ``$STRING`` | No |  |
| `expiry_time` | ``$STRING`` | No |  |
| `heat_index` | ``$NUMBER`` | No |  |
| `humidity` | ``$INTEGER`` | No |  |
| `issue_time` | ``$STRING`` | No |  |
| `recommendation` | ``$ARRAY`` | No |  |
| `temperature` | ``$NUMBER`` | No |  |
| `update_time` | ``$STRING`` | No |  |
| `warning_level` | ``$STRING`` | No |  |
| `warning_message` | ``$STRING`` | No |  |

### Operations

#### `list(array $reqmatch, ?array $ctrl = null): mixed`

List entities matching the given criteria. Returns an array. Throws on error.

```php
$results = $client->heat_stress_warning_en()->list([]);
```

### Common Methods

#### `dataGet(): array`

Get the entity data. Returns a copy of the current data.

#### `dataSet($data): void`

Set the entity data.

#### `matchGet(): array`

Get the entity match criteria.

#### `matchSet($match): void`

Set the entity match criteria.

#### `make(): HeatStressWarningEnEntity`

Create a new `HeatStressWarningEnEntity` instance with the same client and
options.

#### `getName(): string`

Return the entity name.


---

## HeatStressWarningScEntity

```php
$heat_stress_warning_sc = $client->heat_stress_warning_sc();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `effective_time` | ``$STRING`` | No |  |
| `expiry_time` | ``$STRING`` | No |  |
| `heat_index` | ``$NUMBER`` | No |  |
| `humidity` | ``$INTEGER`` | No |  |
| `issue_time` | ``$STRING`` | No |  |
| `recommendation` | ``$ARRAY`` | No |  |
| `temperature` | ``$NUMBER`` | No |  |
| `update_time` | ``$STRING`` | No |  |
| `warning_level` | ``$STRING`` | No |  |
| `warning_message` | ``$STRING`` | No |  |

### Operations

#### `list(array $reqmatch, ?array $ctrl = null): mixed`

List entities matching the given criteria. Returns an array. Throws on error.

```php
$results = $client->heat_stress_warning_sc()->list([]);
```

### Common Methods

#### `dataGet(): array`

Get the entity data. Returns a copy of the current data.

#### `dataSet($data): void`

Set the entity data.

#### `matchGet(): array`

Get the entity match criteria.

#### `matchSet($match): void`

Set the entity match criteria.

#### `make(): HeatStressWarningScEntity`

Create a new `HeatStressWarningScEntity` instance with the same client and
options.

#### `getName(): string`

Return the entity name.


---

## HeatStressWarningTcEntity

```php
$heat_stress_warning_tc = $client->heat_stress_warning_tc();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `effective_time` | ``$STRING`` | No |  |
| `expiry_time` | ``$STRING`` | No |  |
| `heat_index` | ``$NUMBER`` | No |  |
| `humidity` | ``$INTEGER`` | No |  |
| `issue_time` | ``$STRING`` | No |  |
| `recommendation` | ``$ARRAY`` | No |  |
| `temperature` | ``$NUMBER`` | No |  |
| `update_time` | ``$STRING`` | No |  |
| `warning_level` | ``$STRING`` | No |  |
| `warning_message` | ``$STRING`` | No |  |

### Operations

#### `list(array $reqmatch, ?array $ctrl = null): mixed`

List entities matching the given criteria. Returns an array. Throws on error.

```php
$results = $client->heat_stress_warning_tc()->list([]);
```

### Common Methods

#### `dataGet(): array`

Get the entity data. Returns a copy of the current data.

#### `dataSet($data): void`

Set the entity data.

#### `matchGet(): array`

Get the entity match criteria.

#### `matchSet($match): void`

Set the entity match criteria.

#### `make(): HeatStressWarningTcEntity`

Create a new `HeatStressWarningTcEntity` instance with the same client and
options.

#### `getName(): string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```php
$client = new HeatStressWarningSDK([
  "feature" => [
    "test" => ["active" => true],
  ],
]);
```

