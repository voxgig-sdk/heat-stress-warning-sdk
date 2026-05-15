# ProjectName SDK exists test

import pytest
from heatstresswarning_sdk import HeatStressWarningSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = HeatStressWarningSDK.test(None, None)
        assert testsdk is not None
