# HeatStressWarning Python SDK Reference

Complete API reference for the HeatStressWarning Python SDK.


## HeatStressWarningSDK

### Constructor

```python
from heat-stress-warning_sdk import HeatStressWarningSDK

client = HeatStressWarningSDK(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `dict` | SDK configuration options. |
| `options["base"]` | `str` | Base URL for API requests. |
| `options["prefix"]` | `str` | URL prefix appended after base. |
| `options["suffix"]` | `str` | URL suffix appended after path. |
| `options["headers"]` | `dict` | Custom headers for all requests. |
| `options["feature"]` | `dict` | Feature configuration. |
| `options["system"]` | `dict` | System overrides (e.g. custom fetch). |


### Static Methods

#### `HeatStressWarningSDK.test(testopts=None, sdkopts=None)`

Create a test client with mock features active. Both arguments may be `None`.

```python
client = HeatStressWarningSDK.test()
```


### Instance Methods

#### `HeatStressWarningEn(data=None)`

Create a new `HeatStressWarningEnEntity` instance. Pass `None` for no initial data.

#### `HeatStressWarningSc(data=None)`

Create a new `HeatStressWarningScEntity` instance. Pass `None` for no initial data.

#### `HeatStressWarningTc(data=None)`

Create a new `HeatStressWarningTcEntity` instance. Pass `None` for no initial data.

#### `options_map() -> dict`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs=None) -> dict`

Make a direct HTTP request to any API endpoint. Returns a result `dict` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never raises — branch on `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `str` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `str` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `dict` | Path parameter values. |
| `fetchargs["query"]` | `dict` | Query string parameters. |
| `fetchargs["headers"]` | `dict` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (dicts are JSON-serialized). |

**Returns:** `result_dict`

#### `prepare(fetchargs=None) -> dict`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## HeatStressWarningEnEntity

```python
heat_stress_warning_en = client.heat_stress_warning_en
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

#### `list(reqmatch, ctrl=None) -> list`

List entities matching the given criteria. Returns a list and raises on error.

```python
results = client.heat_stress_warning_en.list({})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `HeatStressWarningEnEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## HeatStressWarningScEntity

```python
heat_stress_warning_sc = client.heat_stress_warning_sc
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

#### `list(reqmatch, ctrl=None) -> list`

List entities matching the given criteria. Returns a list and raises on error.

```python
results = client.heat_stress_warning_sc.list({})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `HeatStressWarningScEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## HeatStressWarningTcEntity

```python
heat_stress_warning_tc = client.heat_stress_warning_tc
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

#### `list(reqmatch, ctrl=None) -> list`

List entities matching the given criteria. Returns a list and raises on error.

```python
results = client.heat_stress_warning_tc.list({})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `HeatStressWarningTcEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```python
client = HeatStressWarningSDK({
    "feature": {
        "test": {"active": True},
    },
})
```

