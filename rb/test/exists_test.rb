# HeatStressWarning SDK exists test

require "minitest/autorun"
require_relative "../HeatStressWarning_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = HeatStressWarningSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
