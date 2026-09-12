import { HeatStressWarningEntityBase } from '../HeatStressWarningEntityBase';
import type { HeatStressWarningSDK } from '../HeatStressWarningSDK';
import type { Control } from '../types';
import type { HeatStressWarningTc, HeatStressWarningTcListMatch } from '../HeatStressWarningTypes';
declare class HeatStressWarningTcEntity extends HeatStressWarningEntityBase<HeatStressWarningTc> {
    constructor(client: HeatStressWarningSDK, entopts: any);
    make(this: HeatStressWarningTcEntity): HeatStressWarningTcEntity;
    list(this: any, reqmatch?: HeatStressWarningTcListMatch, ctrl?: Control): Promise<HeatStressWarningTcEntity[]>;
}
export { HeatStressWarningTcEntity };
