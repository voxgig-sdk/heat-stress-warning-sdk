# HeatStressWarning SDK utility: feature_add
module HeatStressWarningUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
