"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const node_path_1 = __importDefault(require("node:path"));
const Fs = __importStar(require("node:fs"));
const node_test_1 = require("node:test");
const node_assert_1 = __importDefault(require("node:assert"));
const live_runner_1 = require("../../live-runner");
const live_entity_1 = require("../../live-entity");
const __1 = require("../../..");
const utility_1 = require("../../utility");
// AFTER the imports on purpose: TypeScript hoists `import` above any
// statement in the emitted CommonJS, so a loader placed above them would
// run only after every imported module had already been evaluated - and
// anything reading process.env at module scope would miss these values.
(0, utility_1.loadEnvLocal)(__dirname + '/../../../.env.local');
(0, node_test_1.describe)('HeatStressWarningTcEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when HEAT_STRESS_WARNING_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('HEAT_STRESS_WARNING_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.HeatStressWarningSDK.test();
        const ent = testsdk.HeatStressWarningTc();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.HEAT_STRESS_WARNING_TEST_LIVE;
        for (const op of ['list']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'heat_stress_warning_tc.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": [{ "active": true, "format": "date-time", "name": "effectiveTime", "req": false, "short": "Time when the warning becomes effective", "type": "`$STRING`", "index$": 0 }, { "active": true, "format": "date-time", "name": "expiryTime", "req": false, "short": "Time when the warning expires", "type": "`$STRING`", "index$": 1 }, { "active": true, "format": "float", "name": "heatIndex", "req": false, "short": "Calculated heat index value", "type": "`$NUMBER`", "index$": 2 }, { "active": true, "name": "humidity", "req": false, "short": "Relative humidity percentage", "type": "`$INTEGER`", "index$": 3 }, { "active": true, "format": "date-time", "name": "issueTime", "req": false, "short": "Time when the warning was issued", "type": "`$STRING`", "index$": 4 }, { "active": true, "name": "recommendations", "req": false, "short": "List of recommended actions for workers", "type": "`$ARRAY`", "index$": 5 }, { "active": true, "format": "float", "name": "temperature", "req": false, "short": "Current temperature in degrees Celsius", "type": "`$NUMBER`", "index$": 6 }, { "active": true, "format": "date-time", "name": "updateTime", "req": false, "short": "Last update time of the data", "type": "`$STRING`", "index$": 7 }, { "active": true, "name": "warningLevel", "req": false, "short": "Current heat stress warning level", "type": "`$STRING`", "index$": 8 }, { "active": true, "name": "warningMessage", "req": false, "short": "Warning message with details and recommendations", "type": "`$STRING`", "index$": 9 }], "name": "heat_stress_warning_tc", "op": { "list": { "input": "data", "name": "list", "points": [{ "active": true, "args": {}, "contract": { "id": "GET /opendata/heat-stress-warning-tc.json", "json": "{\"operationId\":\"getHeatStressWarningTraditionalChinese\",\"parameters\":[],\"protocol\":\"http\",\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"description\":\"Heat stress at work warning data\",\"properties\":{\"effectiveTime\":{\"description\":\"Time when the warning becomes effective\",\"example\":\"2023-07-15T15:00:00+08:00\",\"format\":\"date-time\",\"type\":\"string\"},\"expiryTime\":{\"description\":\"Time when the warning expires\",\"example\":\"2023-07-15T18:00:00+08:00\",\"format\":\"date-time\",\"type\":\"string\"},\"heatIndex\":{\"description\":\"Calculated heat index value\",\"example\":42.3,\"format\":\"float\",\"type\":\"number\"},\"humidity\":{\"description\":\"Relative humidity percentage\",\"example\":85,\"type\":\"integer\"},\"issueTime\":{\"description\":\"Time when the warning was issued\",\"example\":\"2023-07-15T14:30:00+08:00\",\"format\":\"date-time\",\"type\":\"string\"},\"recommendations\":{\"description\":\"List of recommended actions for workers\",\"example\":[\"Drink water frequently\",\"Take regular rest breaks in shaded areas\",\"Wear light-colored and loose-fitting clothing\"],\"items\":{\"type\":\"string\"},\"type\":\"array\"},\"temperature\":{\"description\":\"Current temperature in degrees Celsius\",\"example\":33.5,\"format\":\"float\",\"type\":\"number\"},\"updateTime\":{\"description\":\"Last update time of the data\",\"example\":\"2023-07-15T14:25:00+08:00\",\"format\":\"date-time\",\"type\":\"string\"},\"warningLevel\":{\"description\":\"Current heat stress warning level\",\"example\":\"Yellow\",\"type\":\"string\"},\"warningMessage\":{\"description\":\"Warning message with details and recommendations\",\"example\":\"Heat stress at work warning is in force. Workers should take precautionary measures.\",\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful response with heat stress warning data in Traditional Chinese\"},\"404\":{\"content\":{\"application/json\":{\"schema\":{\"description\":\"Error response\",\"properties\":{\"code\":{\"description\":\"Error code\",\"example\":404,\"type\":\"integer\"},\"error\":{\"description\":\"Error message\",\"example\":\"Resource not found\",\"type\":\"string\"},\"timestamp\":{\"description\":\"Timestamp of the error\",\"example\":\"2023-07-15T14:30:00+08:00\",\"format\":\"date-time\",\"type\":\"string\"}},\"required\":[\"error\",\"code\"],\"type\":\"object\"}}},\"description\":\"Resource not found\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"description\":\"Error response\",\"properties\":{\"code\":{\"description\":\"Error code\",\"example\":404,\"type\":\"integer\"},\"error\":{\"description\":\"Error message\",\"example\":\"Resource not found\",\"type\":\"string\"},\"timestamp\":{\"description\":\"Timestamp of the error\",\"example\":\"2023-07-15T14:30:00+08:00\",\"format\":\"date-time\",\"type\":\"string\"}},\"required\":[\"error\",\"code\"],\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"securitySource\":\"unspecified\"}", "source": "openapi3", "version": 1 }, "kind": "http", "method": "GET", "orig": "/opendata/heat-stress-warning-tc.json", "segments": [{ "lit": "opendata" }, { "lit": "heat-stress-warning-tc.json" }], "select": {}, "transform": { "req": "`reqdata`", "res": "`body.recommendations`" }, "index$": 0 }], "key$": "list" } }, "relations": { "ancestors": [] }, "key$": "heat_stress_warning_tc", "name__orig": "heat_stress_warning_tc", "Name": "HeatStressWarningTc", "name_": "heat_stress_warning_tc", "name-": "heat-stress-warning-tc", "NAME": "HEAT_STRESS_WARNING_TC", "index$": 2 }, { "active": true, "entity": "heat_stress_warning_tc", "key$": "BasicHeatStressWarningTcFlow", "kind": "basic", "name": "BasicHeatStressWarningTcFlow", "param": {}, "step": [{ "active": true, "data": {}, "input": {}, "match": {}, "op": "list", "spec": [], "valid": [{ "apply": "ItemExists", "def": { "ref": "heat_stress_warning_tc_ref01" } }], "index$": 0 }] }, 'HeatStressWarningTc');
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        let heat_stress_warning_tc_ref01_data = Object.values(setup.data.existing.heat_stress_warning_tc)[0];
        // LIST
        const heat_stress_warning_tc_ref01_ent = client.HeatStressWarningTc();
        const heat_stress_warning_tc_ref01_match = {};
        const heat_stress_warning_tc_ref01_list = (await heat_stress_warning_tc_ref01_ent.list(heat_stress_warning_tc_ref01_match)).map((e) => e.data());
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/heat_stress_warning_tc/HeatStressWarningTcTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.HeatStressWarningSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['heat_stress_warning_tc01', 'heat_stress_warning_tc02', 'heat_stress_warning_tc03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'HEAT_STRESS_WARNING_TEST_HEAT_STRESS_WARNING_TC_ENTID': idmap,
        'HEAT_STRESS_WARNING_TEST_LIVE': 'FALSE',
        'HEAT_STRESS_WARNING_TEST_EXPLAIN': 'FALSE',
    });
    idmap = env['HEAT_STRESS_WARNING_TEST_HEAT_STRESS_WARNING_TC_ENTID'];
    const live = 'TRUE' === env.HEAT_STRESS_WARNING_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['HEAT_STRESS_WARNING_TEST_HEAT_STRESS_WARNING_TC_ENTID'];
        idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {};
        if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
            throw new Error('Live ENTID must be a JSON object');
        }
        client = new __1.HeatStressWarningSDK(merge([
            // FIRST, so the generated fields below win: sdk-test-control.json's
            // test.client.options adds to the live client, it does not redirect it.
            (0, utility_1.liveClientOptions)(),
            {},
            // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
            // last entry is undefined, and basicSetup is normally called with no
            // argument at all - so a bare 'extra' silently discarded the apikey
            // and server values above and handed the SDK undefined. Harmless
            // while there was nothing in that object; not harmless now.
            extra || {},
            { system: { fetch: transport.fetch } }
        ]));
    }
    const setup = {
        idmap,
        env,
        options,
        client,
        struct,
        data: entityData,
        explain: 'TRUE' === env.HEAT_STRESS_WARNING_TEST_EXPLAIN,
        live,
        transport,
        now: Date.now(),
    };
    return setup;
}
//# sourceMappingURL=HeatStressWarningTcEntity.test.js.map