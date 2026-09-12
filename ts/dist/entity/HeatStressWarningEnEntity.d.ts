import { HeatStressWarningEntityBase } from '../HeatStressWarningEntityBase';
import type { HeatStressWarningSDK } from '../HeatStressWarningSDK';
import type { Control } from '../types';
import type { HeatStressWarningEn, HeatStressWarningEnListMatch } from '../HeatStressWarningTypes';
declare class HeatStressWarningEnEntity extends HeatStressWarningEntityBase<HeatStressWarningEn> {
    constructor(client: HeatStressWarningSDK, entopts: any);
    make(this: HeatStressWarningEnEntity): HeatStressWarningEnEntity;
    list(this: any, reqmatch?: HeatStressWarningEnListMatch, ctrl?: Control): Promise<HeatStressWarningEnEntity[]>;
}
export { HeatStressWarningEnEntity };
