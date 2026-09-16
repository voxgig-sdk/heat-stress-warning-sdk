# HeatStressWarning SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module HeatStressWarningFeatures
  def self.make_feature(name)
    case name
    when "base"
      HeatStressWarningBaseFeature.new
    when "ratelimit"
      HeatStressWarningRatelimitFeature.new
    when "retry"
      HeatStressWarningRetryFeature.new
    when "test"
      HeatStressWarningTestFeature.new
    when "timeout"
      HeatStressWarningTimeoutFeature.new
    else
      HeatStressWarningBaseFeature.new
    end
  end
end
