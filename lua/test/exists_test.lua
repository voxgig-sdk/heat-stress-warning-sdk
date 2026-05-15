-- ProjectName SDK exists test

local sdk = require("heat-stress-warning_sdk")

describe("HeatStressWarningSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
