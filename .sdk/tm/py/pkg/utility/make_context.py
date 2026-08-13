# HeatStressWarning SDK utility: make_context

from projectname_sdk.core.context import HeatStressWarningContext


def make_context_util(ctxmap, basectx):
    return HeatStressWarningContext(ctxmap, basectx)
