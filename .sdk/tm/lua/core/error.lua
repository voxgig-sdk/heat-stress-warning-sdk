-- HeatStressWarning SDK error

local HeatStressWarningError = {}
HeatStressWarningError.__index = HeatStressWarningError


function HeatStressWarningError.new(code, msg, ctx)
  local self = setmetatable({}, HeatStressWarningError)
  self.is_sdk_error = true
  self.sdk = "HeatStressWarning"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function HeatStressWarningError:error()
  return self.msg
end


function HeatStressWarningError:__tostring()
  return self.msg
end


return HeatStressWarningError
