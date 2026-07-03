package = "voxgig-sdk-heat-stress-warning"
version = "0.0.1-1"
source = {
  -- git+https (GitHub dropped git:// in 2022); pin the install to the release
  -- tag pushed by `make publish`, and point at the lua/ subdir of the monorepo.
  url = "git+https://github.com/voxgig-sdk/heat-stress-warning-sdk.git",
  tag = "lua/v0.0.1",
  dir = "heat-stress-warning-sdk/lua"
}
description = {
  summary = "Unofficial generated Lua SDK for the Heat Stress Warning public API. Not affiliated with or endorsed by the upstream API provider.",
  homepage = "https://github.com/voxgig-sdk/heat-stress-warning-sdk",
  issues_url = "https://github.com/voxgig-sdk/heat-stress-warning-sdk/issues",
  license = "MIT",
  labels = { "voxgig", "sdk", "generated-sdk", "openapi", "api-client", "heat-stress-warning" }
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["heat-stress-warning_sdk"] = "heat-stress-warning_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
