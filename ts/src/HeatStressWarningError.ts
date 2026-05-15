
import { Context } from './Context'


class HeatStressWarningError extends Error {

  isHeatStressWarningError = true

  sdk = 'HeatStressWarning'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  HeatStressWarningError
}

