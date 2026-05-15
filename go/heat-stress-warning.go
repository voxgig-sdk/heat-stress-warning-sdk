package voxgigheatstresswarningsdk

import (
	"github.com/voxgig-sdk/heat-stress-warning-sdk/core"
	"github.com/voxgig-sdk/heat-stress-warning-sdk/entity"
	"github.com/voxgig-sdk/heat-stress-warning-sdk/feature"
	_ "github.com/voxgig-sdk/heat-stress-warning-sdk/utility"
)

// Type aliases preserve external API.
type HeatStressWarningSDK = core.HeatStressWarningSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type HeatStressWarningEntity = core.HeatStressWarningEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type HeatStressWarningError = core.HeatStressWarningError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewHeatStressWarningEnEntityFunc = func(client *core.HeatStressWarningSDK, entopts map[string]any) core.HeatStressWarningEntity {
		return entity.NewHeatStressWarningEnEntity(client, entopts)
	}
	core.NewHeatStressWarningScEntityFunc = func(client *core.HeatStressWarningSDK, entopts map[string]any) core.HeatStressWarningEntity {
		return entity.NewHeatStressWarningScEntity(client, entopts)
	}
	core.NewHeatStressWarningTcEntityFunc = func(client *core.HeatStressWarningSDK, entopts map[string]any) core.HeatStressWarningEntity {
		return entity.NewHeatStressWarningTcEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewHeatStressWarningSDK = core.NewHeatStressWarningSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
