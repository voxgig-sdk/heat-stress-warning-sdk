import { Context } from './Context';
declare class HeatStressWarningError extends Error {
    isHeatStressWarningError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { HeatStressWarningError };
