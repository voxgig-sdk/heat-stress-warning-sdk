# HeatStressWarning Ruby SDK Reference

Complete API reference for the HeatStressWarning Ruby SDK.


## HeatStressWarningSDK

### Constructor

```ruby
require_relative 'HeatStressWarning_sdk'

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
| `effectiveTime` | `String` | No | Time when the warning becomes effective |
| `expiryTime` | `String` | No | Time when the warning expires |
| `heatIndex` | `Float` | No | Calculated heat index value |
| `humidity` | `Integer` | No | Relative humidity percentage |
| `issueTime` | `String` | No | Time when the warning was issued |
| `recommendations` | `Array` | No | List of recommended actions for workers |
| `temperature` | `Float` | No | Current temperature in degrees Celsius |
| `updateTime` | `String` | No | Last update time of the data |
| `warningLevel` | `String` | No | Current heat stress warning level |
| `warningMessage` | `String` | No | Warning message with details and recommendations |

### Operations

#### `list(reqmatch = nil, ctrl = nil) -> Array`

List entities matching the given criteria (call with no argument to list all). Returns an array. Raises on error.

```ruby
results = client.HeatStressWarningEn.list
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
| `effectiveTime` | `String` | No | Time when the warning becomes effective |
| `expiryTime` | `String` | No | Time when the warning expires |
| `heatIndex` | `Float` | No | Calculated heat index value |
| `humidity` | `Integer` | No | Relative humidity percentage |
| `issueTime` | `String` | No | Time when the warning was issued |
| `recommendations` | `Array` | No | List of recommended actions for workers |
| `temperature` | `Float` | No | Current temperature in degrees Celsius |
| `updateTime` | `String` | No | Last update time of the data |
| `warningLevel` | `String` | No | Current heat stress warning level |
| `warningMessage` | `String` | No | Warning message with details and recommendations |

### Operations

#### `list(reqmatch = nil, ctrl = nil) -> Array`

List entities matching the given criteria (call with no argument to list all). Returns an array. Raises on error.

```ruby
results = client.HeatStressWarningSc.list
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
| `effectiveTime` | `String` | No | Time when the warning becomes effective |
| `expiryTime` | `String` | No | Time when the warning expires |
| `heatIndex` | `Float` | No | Calculated heat index value |
| `humidity` | `Integer` | No | Relative humidity percentage |
| `issueTime` | `String` | No | Time when the warning was issued |
| `recommendations` | `Array` | No | List of recommended actions for workers |
| `temperature` | `Float` | No | Current temperature in degrees Celsius |
| `updateTime` | `String` | No | Last update time of the data |
| `warningLevel` | `String` | No | Current heat stress warning level |
| `warningMessage` | `String` | No | Warning message with details and recommendations |

### Operations

#### `list(reqmatch = nil, ctrl = nil) -> Array`

List entities matching the given criteria (call with no argument to list all). Returns an array. Raises on error.

```ruby
results = client.HeatStressWarningTc.list
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


### Configuring features

Each feature is inactive until switched on, and an SDK with no feature
configured does no feature work at all. Every option below keeps its default
unless you name it.

The array form of \`feature\` is significant: several features wrap the
transport, and the order you list them in is the order they nest.

#### `test`

In-memory mock transport for testing without a live server.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.test.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Installs the BASE transport that the wrapping features wrap, so it must be
  activated before them.
- Inactive by default: leaving it out costs nothing at runtime.

