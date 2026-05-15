# HeatStressWarning SDK utility: make_context
require_relative '../core/context'
module HeatStressWarningUtilities
  MakeContext = ->(ctxmap, basectx) {
    HeatStressWarningContext.new(ctxmap, basectx)
  }
end
