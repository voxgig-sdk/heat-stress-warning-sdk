# HeatStressWarning SDK

Latest Hong Kong heat stress at work warnings from the Labour Department, available in English, Traditional Chinese, and Simplified Chinese

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About Heat Stress Warning API

The Heat Stress Warning API is a public, no-auth endpoint operated by the [Hong Kong Observatory](https://www.hko.gov.hk/) that surfaces the Heat Stress at Work Warning (HSWW) issued by the Hong Kong Labour Department. The warning is intended to help employers and outdoor workers assess heat-related risk.

The API is a single endpoint, `https://data.weather.gov.hk/weatherAPI/opendata/hsww.php`, parameterised by a `lang` query string. The same warning payload is returned in three localisations:

- `lang=en` — English
- `lang=tc` — Traditional Chinese
- `lang=sc` — Simplified Chinese

The response describes the currently in-force heat stress warning (if any), so it is small and well suited to polling on a short interval. The endpoint is public, requires no API key, and has CORS enabled, so it can be called directly from server or browser code.

## Try it

**TypeScript**
```bash
npm install heat-stress-warning
```

**Python**
```bash
pip install heat-stress-warning-sdk
```

**PHP**
```bash
composer require voxgig/heat-stress-warning-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/heat-stress-warning-sdk/go
```

**Ruby**
```bash
gem install heat-stress-warning-sdk
```

**Lua**
```bash
luarocks install heat-stress-warning-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { HeatStressWarningSDK } from 'heat-stress-warning'

const client = new HeatStressWarningSDK({})

// List all heatstresswarningens
const heatstresswarningens = await client.HeatStressWarningEn().list()
```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o heat-stress-warning-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "heat-stress-warning": {
      "command": "/abs/path/to/heat-stress-warning-mcp"
    }
  }
}
```

## Entities

The API exposes 3 entities:

| Entity | Description | API path |
| --- | --- | --- |
| **HeatStressWarningEn** | Current Heat Stress at Work Warning in English, served from `GET /opendata/hsww.php?lang=en`. | `/opendata/heat-stress-warning-en.json` |
| **HeatStressWarningSc** | Current Heat Stress at Work Warning in Simplified Chinese, served from `GET /opendata/hsww.php?lang=sc`. | `/opendata/heat-stress-warning-sc.json` |
| **HeatStressWarningTc** | Current Heat Stress at Work Warning in Traditional Chinese, served from `GET /opendata/hsww.php?lang=tc`. | `/opendata/heat-stress-warning-tc.json` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from heatstresswarning_sdk import HeatStressWarningSDK

client = HeatStressWarningSDK({})

# List all heatstresswarningens
heatstresswarningens, err = client.HeatStressWarningEn(None).list(None, None)
```

### PHP

```php
<?php
require_once 'heatstresswarning_sdk.php';

$client = new HeatStressWarningSDK([]);

// List all heatstresswarningens
[$heatstresswarningens, $err] = $client->HeatStressWarningEn(null)->list(null, null);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/heat-stress-warning-sdk/go"

client := sdk.NewHeatStressWarningSDK(map[string]any{})

// List all heatstresswarningens
heatstresswarningens, err := client.HeatStressWarningEn(nil).List(nil, nil)
```

### Ruby

```ruby
require_relative "HeatStressWarning_sdk"

client = HeatStressWarningSDK.new({})

# List all heatstresswarningens
heatstresswarningens, err = client.HeatStressWarningEn(nil).list(nil, nil)
```

### Lua

```lua
local sdk = require("heat-stress-warning_sdk")

local client = sdk.new({})

-- List all heatstresswarningens
local heatstresswarningens, err = client:HeatStressWarningEn(nil):list(nil, nil)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = HeatStressWarningSDK.test()
const result = await client.HeatStressWarningEn().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = HeatStressWarningSDK.test(None, None)
result, err = client.HeatStressWarningEn(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = HeatStressWarningSDK::test(null, null);
[$result, $err] = $client->HeatStressWarningEn(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.HeatStressWarningEn(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = HeatStressWarningSDK.test(nil, nil)
result, err = client.HeatStressWarningEn(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:HeatStressWarningEn(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the Heat Stress Warning API

- Upstream: [https://data.weather.gov.hk/weatherAPI](https://data.weather.gov.hk/weatherAPI)

- Data is published by the [Hong Kong Observatory](https://www.hko.gov.hk/) on behalf of the Hong Kong Labour Department as part of the HKO open data programme.
- No explicit licence string is exposed by the API; the Hong Kong Observatory's data portal terms of use apply.
- Attribution to the Hong Kong Observatory / Hong Kong Labour Department is expected when reusing the data.
- CORS is enabled on the public endpoint, so the data can be consumed directly from browser clients.

---

Generated from the Heat Stress Warning API OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).
