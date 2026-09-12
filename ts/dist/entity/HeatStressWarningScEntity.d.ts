import { HeatStressWarningEntityBase } from '../HeatStressWarningEntityBase';
import type { HeatStressWarningSDK } from '../HeatStressWarningSDK';
import type { Control } from '../types';
import type { HeatStressWarningSc, HeatStressWarningScListMatch } from '../HeatStressWarningTypes';
declare class HeatStressWarningScEntity extends HeatStressWarningEntityBase<HeatStressWarningSc> {
    constructor(client: HeatStressWarningSDK, entopts: any);
    make(this: HeatStressWarningScEntity): HeatStressWarningScEntity;
    list(this: any, reqmatch?: HeatStressWarningScListMatch, ctrl?: Control): Promise<HeatStressWarningScEntity[]>;
}
export { HeatStressWarningScEntity };
