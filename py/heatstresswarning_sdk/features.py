# HeatStressWarning SDK feature factory

from heatstresswarning_sdk.feature.base_feature import HeatStressWarningBaseFeature
from heatstresswarning_sdk.feature.ratelimit_feature import HeatStressWarningRatelimitFeature
from heatstresswarning_sdk.feature.retry_feature import HeatStressWarningRetryFeature
from heatstresswarning_sdk.feature.test_feature import HeatStressWarningTestFeature
from heatstresswarning_sdk.feature.timeout_feature import HeatStressWarningTimeoutFeature


_FEATURES = {
    "base": lambda: HeatStressWarningBaseFeature(),
    "ratelimit": lambda: HeatStressWarningRatelimitFeature(),
    "retry": lambda: HeatStressWarningRetryFeature(),
    "test": lambda: HeatStressWarningTestFeature(),
    "timeout": lambda: HeatStressWarningTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
