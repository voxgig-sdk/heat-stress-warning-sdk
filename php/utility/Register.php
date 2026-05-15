<?php
declare(strict_types=1);

// HeatStressWarning SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

HeatStressWarningUtility::setRegistrar(function (HeatStressWarningUtility $u): void {
    $u->clean = [HeatStressWarningClean::class, 'call'];
    $u->done = [HeatStressWarningDone::class, 'call'];
    $u->make_error = [HeatStressWarningMakeError::class, 'call'];
    $u->feature_add = [HeatStressWarningFeatureAdd::class, 'call'];
    $u->feature_hook = [HeatStressWarningFeatureHook::class, 'call'];
    $u->feature_init = [HeatStressWarningFeatureInit::class, 'call'];
    $u->fetcher = [HeatStressWarningFetcher::class, 'call'];
    $u->make_fetch_def = [HeatStressWarningMakeFetchDef::class, 'call'];
    $u->make_context = [HeatStressWarningMakeContext::class, 'call'];
    $u->make_options = [HeatStressWarningMakeOptions::class, 'call'];
    $u->make_request = [HeatStressWarningMakeRequest::class, 'call'];
    $u->make_response = [HeatStressWarningMakeResponse::class, 'call'];
    $u->make_result = [HeatStressWarningMakeResult::class, 'call'];
    $u->make_point = [HeatStressWarningMakePoint::class, 'call'];
    $u->make_spec = [HeatStressWarningMakeSpec::class, 'call'];
    $u->make_url = [HeatStressWarningMakeUrl::class, 'call'];
    $u->param = [HeatStressWarningParam::class, 'call'];
    $u->prepare_auth = [HeatStressWarningPrepareAuth::class, 'call'];
    $u->prepare_body = [HeatStressWarningPrepareBody::class, 'call'];
    $u->prepare_headers = [HeatStressWarningPrepareHeaders::class, 'call'];
    $u->prepare_method = [HeatStressWarningPrepareMethod::class, 'call'];
    $u->prepare_params = [HeatStressWarningPrepareParams::class, 'call'];
    $u->prepare_path = [HeatStressWarningPreparePath::class, 'call'];
    $u->prepare_query = [HeatStressWarningPrepareQuery::class, 'call'];
    $u->result_basic = [HeatStressWarningResultBasic::class, 'call'];
    $u->result_body = [HeatStressWarningResultBody::class, 'call'];
    $u->result_headers = [HeatStressWarningResultHeaders::class, 'call'];
    $u->transform_request = [HeatStressWarningTransformRequest::class, 'call'];
    $u->transform_response = [HeatStressWarningTransformResponse::class, 'call'];
});
