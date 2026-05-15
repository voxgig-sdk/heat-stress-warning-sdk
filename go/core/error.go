package core

type HeatStressWarningError struct {
	IsHeatStressWarningError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewHeatStressWarningError(code string, msg string, ctx *Context) *HeatStressWarningError {
	return &HeatStressWarningError{
		IsHeatStressWarningError: true,
		Sdk:              "HeatStressWarning",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *HeatStressWarningError) Error() string {
	return e.Msg
}
