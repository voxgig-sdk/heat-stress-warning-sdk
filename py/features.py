# HeatStressWarning SDK feature factory

from feature.base_feature import HeatStressWarningBaseFeature
from feature.test_feature import HeatStressWarningTestFeature


def _make_feature(name):
    features = {
        "base": lambda: HeatStressWarningBaseFeature(),
        "test": lambda: HeatStressWarningTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
