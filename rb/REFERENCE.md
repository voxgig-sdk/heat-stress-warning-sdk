# HeatStressWarning Ruby SDK Reference

Complete API reference for the HeatStressWarning Ruby SDK.


## HeatStressWarningSDK

### Constructor

```ruby
require_relative 'heat-stress-warning_sdk'

client = HeatStressWarningSDK.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Hash` | SDK configuration options. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `Hash` | Custom headers for all requests. |
| `options["feature"]` | `Hash` | Feature configuration. |
| `options["system"]` | `Hash` | System overrides (e.g. custom fetch). |


### Static Methods

#### `HeatStressWarningSDK.test(testopts = nil, sdkopts = nil)`

Create a test client with mock features active. Both arguments may be `nil`.

```ruby
client = HeatStressWarningSDK.test
```


### Instance Methods

#### `HeatStressWarningEn(data = nil)`

Create a new `HeatStressWarningEn` entity instance. Pass `nil` for no initial data.

#### `HeatStressWarningSc(data = nil)`

Create a new `HeatStressWarningSc` entity instance. Pass `nil` for no initial data.

#### `HeatStressWarningTc(data = nil)`

Create a new `HeatStressWarningTc` entity instance. Pass `nil` for no initial data.

#### `options_map -> Hash`

Return a deep copy of the current SDK options.

#### `get_utility -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs = {}) -> Hash`

Make a direct HTTP request to any API endpoint. Returns a result hash
(`{ "ok" => ..., "status" => ..., "data" => ..., "err" => ... }`); it
does not raise — inspect `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Hash` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `Hash` | Query string parameters. |
| `fetchargs["headers"]` | `Hash` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (hashes are JSON-serialized). |
| `fetchargs["ctrl"]` | `Hash` | Control options (e.g. `{ "explain" => true }`). |

**Returns:** `Hash`

#### `prepare(fetchargs = {}) -> Hash`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`. Raises on error.

**Returns:** `Hash` (the fetch definition; raises on error)


---

## HeatStressWarningEnEntity

```ruby
heat_stress_warning_en = client.HeatStressWarningEn
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

#### `list(reqmatch, ctrl = nil) -> Array`

List entities matching the given criteria. Returns an array. Raises on error.

```ruby
results = client.HeatStressWarningEn.list(nil)
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `HeatStressWarningEnEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## HeatStressWarningScEntity

```ruby
heat_stress_warning_sc = client.HeatStressWarningSc
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

#### `list(reqmatch, ctrl = nil) -> Array`

List entities matching the given criteria. Returns an array. Raises on error.

```ruby
results = client.HeatStressWarningSc.list(nil)
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `HeatStressWarningScEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## HeatStressWarningTcEntity

```ruby
heat_stress_warning_tc = client.HeatStressWarningTc
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

#### `list(reqmatch, ctrl = nil) -> Array`

List entities matching the given criteria. Returns an array. Raises on error.

```ruby
results = client.HeatStressWarningTc.list(nil)
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `HeatStressWarningTcEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ruby
client = HeatStressWarningSDK.new({
  "feature" => {
    "test" => { "active" => true },
  },
})
```

