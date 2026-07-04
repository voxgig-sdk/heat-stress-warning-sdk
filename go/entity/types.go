// Typed models for the HeatStressWarning SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import "encoding/json"

// HeatStressWarningEn is the typed data model for the heat_stress_warning_en entity.
type HeatStressWarningEn struct {
	EffectiveTime *string `json:"effective_time,omitempty"`
	ExpiryTime *string `json:"expiry_time,omitempty"`
	HeatIndex *float64 `json:"heat_index,omitempty"`
	Humidity *int `json:"humidity,omitempty"`
	IssueTime *string `json:"issue_time,omitempty"`
	Recommendation *[]any `json:"recommendation,omitempty"`
	Temperature *float64 `json:"temperature,omitempty"`
	UpdateTime *string `json:"update_time,omitempty"`
	WarningLevel *string `json:"warning_level,omitempty"`
	WarningMessage *string `json:"warning_message,omitempty"`
}

// HeatStressWarningEnListMatch mirrors the heat_stress_warning_en fields as an all-optional match
// filter (Go analog of Partial<HeatStressWarningEn>).
type HeatStressWarningEnListMatch struct {
	EffectiveTime *string `json:"effective_time,omitempty"`
	ExpiryTime *string `json:"expiry_time,omitempty"`
	HeatIndex *float64 `json:"heat_index,omitempty"`
	Humidity *int `json:"humidity,omitempty"`
	IssueTime *string `json:"issue_time,omitempty"`
	Recommendation *[]any `json:"recommendation,omitempty"`
	Temperature *float64 `json:"temperature,omitempty"`
	UpdateTime *string `json:"update_time,omitempty"`
	WarningLevel *string `json:"warning_level,omitempty"`
	WarningMessage *string `json:"warning_message,omitempty"`
}

// HeatStressWarningSc is the typed data model for the heat_stress_warning_sc entity.
type HeatStressWarningSc struct {
	EffectiveTime *string `json:"effective_time,omitempty"`
	ExpiryTime *string `json:"expiry_time,omitempty"`
	HeatIndex *float64 `json:"heat_index,omitempty"`
	Humidity *int `json:"humidity,omitempty"`
	IssueTime *string `json:"issue_time,omitempty"`
	Recommendation *[]any `json:"recommendation,omitempty"`
	Temperature *float64 `json:"temperature,omitempty"`
	UpdateTime *string `json:"update_time,omitempty"`
	WarningLevel *string `json:"warning_level,omitempty"`
	WarningMessage *string `json:"warning_message,omitempty"`
}

// HeatStressWarningScListMatch mirrors the heat_stress_warning_sc fields as an all-optional match
// filter (Go analog of Partial<HeatStressWarningSc>).
type HeatStressWarningScListMatch struct {
	EffectiveTime *string `json:"effective_time,omitempty"`
	ExpiryTime *string `json:"expiry_time,omitempty"`
	HeatIndex *float64 `json:"heat_index,omitempty"`
	Humidity *int `json:"humidity,omitempty"`
	IssueTime *string `json:"issue_time,omitempty"`
	Recommendation *[]any `json:"recommendation,omitempty"`
	Temperature *float64 `json:"temperature,omitempty"`
	UpdateTime *string `json:"update_time,omitempty"`
	WarningLevel *string `json:"warning_level,omitempty"`
	WarningMessage *string `json:"warning_message,omitempty"`
}

// HeatStressWarningTc is the typed data model for the heat_stress_warning_tc entity.
type HeatStressWarningTc struct {
	EffectiveTime *string `json:"effective_time,omitempty"`
	ExpiryTime *string `json:"expiry_time,omitempty"`
	HeatIndex *float64 `json:"heat_index,omitempty"`
	Humidity *int `json:"humidity,omitempty"`
	IssueTime *string `json:"issue_time,omitempty"`
	Recommendation *[]any `json:"recommendation,omitempty"`
	Temperature *float64 `json:"temperature,omitempty"`
	UpdateTime *string `json:"update_time,omitempty"`
	WarningLevel *string `json:"warning_level,omitempty"`
	WarningMessage *string `json:"warning_message,omitempty"`
}

// HeatStressWarningTcListMatch mirrors the heat_stress_warning_tc fields as an all-optional match
// filter (Go analog of Partial<HeatStressWarningTc>).
type HeatStressWarningTcListMatch struct {
	EffectiveTime *string `json:"effective_time,omitempty"`
	ExpiryTime *string `json:"expiry_time,omitempty"`
	HeatIndex *float64 `json:"heat_index,omitempty"`
	Humidity *int `json:"humidity,omitempty"`
	IssueTime *string `json:"issue_time,omitempty"`
	Recommendation *[]any `json:"recommendation,omitempty"`
	Temperature *float64 `json:"temperature,omitempty"`
	UpdateTime *string `json:"update_time,omitempty"`
	WarningLevel *string `json:"warning_level,omitempty"`
	WarningMessage *string `json:"warning_message,omitempty"`
}

// asMap turns a typed request/data struct into the map[string]any the
// runtime op pipeline consumes, honouring the json tags above.
func asMap(v any) map[string]any {
	out := map[string]any{}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedFrom decodes a runtime value (a map[string]any produced by the op
// pipeline) into a typed model T via a JSON round-trip. On any error it
// returns the zero value of T; the op's own (value, error) tuple carries the
// real error.
func typedFrom[T any](v any) T {
	var out T
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedSliceFrom decodes a runtime list value ([]any of maps) into a typed
// slice []T via a JSON round-trip, for list ops.
func typedSliceFrom[T any](v any) []T {
	var out []T
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}
