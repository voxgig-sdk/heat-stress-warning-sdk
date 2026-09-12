import { HeatStressWarningEnEntity } from './entity/HeatStressWarningEnEntity';
import { HeatStressWarningScEntity } from './entity/HeatStressWarningScEntity';
import { HeatStressWarningTcEntity } from './entity/HeatStressWarningTcEntity';
export type * from './HeatStressWarningTypes';
import { inspect } from 'node:util';
import type { Context, Feature } from './types';
import { config } from './Config';
import { HeatStressWarningEntityBase } from './HeatStressWarningEntityBase';
import { Utility } from './utility/Utility';
import { BaseFeature } from './feature/base/BaseFeature';
declare const stdutil: Utility;
declare class HeatStressWarningSDK {
    _mode: string;
    _options: any;
    _utility: Utility;
    _features: Feature[];
    _rootctx: Context;
    constructor(options?: any);
    options(): any;
    utility(): any;
    prepare(fetchargs?: any): Promise<any>;
    direct(fetchargs?: any): Promise<Error | {
        ok: boolean;
        status: number;
        headers: any;
        data: any;
        err?: undefined;
    } | {
        ok: boolean;
        err: any;
        status?: undefined;
        headers?: undefined;
        data?: undefined;
    }>;
    _rawRequest(fetchargs?: any): Promise<Error | {
        ok: boolean;
        status: number;
        headers: any;
        data: any;
        err?: undefined;
    } | {
        ok: boolean;
        err: any;
        status?: undefined;
        headers?: undefined;
        data?: undefined;
    }>;
    graphql(query: string, variables?: any, ctrl?: any): Promise<any>;
    HeatStressWarningEn(entopts?: Record<string, any>): HeatStressWarningEnEntity;
    HeatStressWarningSc(entopts?: Record<string, any>): HeatStressWarningScEntity;
    HeatStressWarningTc(entopts?: Record<string, any>): HeatStressWarningTcEntity;
    static test(testoptsarg?: any, sdkoptsarg?: any): HeatStressWarningSDK;
    tester(testopts?: any, sdkopts?: any): HeatStressWarningSDK;
    toJSON(): {
        name: string;
    };
    toString(): string;
    [inspect.custom](): string;
}
declare const SDK: typeof HeatStressWarningSDK;
export { stdutil, config, BaseFeature, HeatStressWarningEntityBase, HeatStressWarningSDK, SDK, };
