# HeatStressWarning SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module HeatStressWarningFeatures
  def self.make_feature(name)
    case name
    when "base"
      HeatStressWarningBaseFeature.new
    when "test"
      HeatStressWarningTestFeature.new
    else
      HeatStressWarningBaseFeature.new
    end
  end
end
