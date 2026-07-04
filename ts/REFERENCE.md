# HeatStressWarning TypeScript SDK Reference

Complete API reference for the HeatStressWarning TypeScript SDK.


## HeatStressWarningSDK

### Constructor

```ts
new HeatStressWarningSDK(options?: object)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `object` | SDK configuration options. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `object` | Custom headers for all requests. |
| `options.feature` | `object` | Feature configuration. |
| `options.system` | `object` | System overrides (e.g. custom fetch). |


### Static Methods

#### `HeatStressWarningSDK.test(testopts?, sdkopts?)`

Create a test client with mock features active.

```ts
const client = HeatStressWarningSDK.test()
```

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `testopts` | `object` | Test feature options. |
| `sdkopts` | `object` | Additional SDK options merged with test defaults. |

**Returns:** `HeatStressWarningSDK` instance in test mode.


### Instance Methods

#### `HeatStressWarningEn(data?: object)`

Create a new `HeatStressWarningEn` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `HeatStressWarningEnEntity` instance.

#### `HeatStressWarningSc(data?: object)`

Create a new `HeatStressWarningSc` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `HeatStressWarningScEntity` instance.

#### `HeatStressWarningTc(data?: object)`

Create a new `HeatStressWarningTc` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `HeatStressWarningTcEntity` instance.

#### `options()`

Return a deep copy of the current SDK options.

**Returns:** `object`

#### `utility()`

Return a copy of the SDK utility object.

**Returns:** `object`

#### `direct(fetchargs?: object)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `GET`). |
| `fetchargs.params` | `object` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `object` | Query string parameters. |
| `fetchargs.headers` | `object` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (objects are JSON-serialized). |
| `fetchargs.ctrl` | `object` | Control options (e.g. `{ explain: true }`). |

**Returns:** `Promise<{ ok, status, headers, data } | Error>`

#### `prepare(fetchargs?: object)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `Promise<{ url, method, headers, body } | Error>`

#### `tester(testopts?, sdkopts?)`

Alias for `HeatStressWarningSDK.test()`.

**Returns:** `HeatStressWarningSDK` instance in test mode.


---

## HeatStressWarningEnEntity

```ts
const heat_stress_warning_en = client.HeatStressWarningEn()
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

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.HeatStressWarningEn().list()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `HeatStressWarningEnEntity` instance with the same client and
options.

#### `client()`

Return the parent `HeatStressWarningSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## HeatStressWarningScEntity

```ts
const heat_stress_warning_sc = client.HeatStressWarningSc()
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

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.HeatStressWarningSc().list()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `HeatStressWarningScEntity` instance with the same client and
options.

#### `client()`

Return the parent `HeatStressWarningSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## HeatStressWarningTcEntity

```ts
const heat_stress_warning_tc = client.HeatStressWarningTc()
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

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.HeatStressWarningTc().list()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `HeatStressWarningTcEntity` instance with the same client and
options.

#### `client()`

Return the parent `HeatStressWarningSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ts
const client = new HeatStressWarningSDK({
  feature: {
    test: { active: true },
  }
})
```

