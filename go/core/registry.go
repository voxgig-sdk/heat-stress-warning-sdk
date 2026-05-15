package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewHeatStressWarningEnEntityFunc func(client *HeatStressWarningSDK, entopts map[string]any) HeatStressWarningEntity

var NewHeatStressWarningScEntityFunc func(client *HeatStressWarningSDK, entopts map[string]any) HeatStressWarningEntity

var NewHeatStressWarningTcEntityFunc func(client *HeatStressWarningSDK, entopts map[string]any) HeatStressWarningEntity

