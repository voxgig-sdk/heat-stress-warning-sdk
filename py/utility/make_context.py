# HeatStressWarning SDK utility: make_context

from core.context import HeatStressWarningContext


def make_context_util(ctxmap, basectx):
    return HeatStressWarningContext(ctxmap, basectx)
