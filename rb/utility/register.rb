# HeatStressWarning SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

HeatStressWarningUtility.registrar = ->(u) {
  u.clean = HeatStressWarningUtilities::Clean
  u.done = HeatStressWarningUtilities::Done
  u.make_error = HeatStressWarningUtilities::MakeError
  u.feature_add = HeatStressWarningUtilities::FeatureAdd
  u.feature_hook = HeatStressWarningUtilities::FeatureHook
  u.feature_init = HeatStressWarningUtilities::FeatureInit
  u.fetcher = HeatStressWarningUtilities::Fetcher
  u.make_fetch_def = HeatStressWarningUtilities::MakeFetchDef
  u.make_context = HeatStressWarningUtilities::MakeContext
  u.make_options = HeatStressWarningUtilities::MakeOptions
  u.make_request = HeatStressWarningUtilities::MakeRequest
  u.make_response = HeatStressWarningUtilities::MakeResponse
  u.make_result = HeatStressWarningUtilities::MakeResult
  u.make_point = HeatStressWarningUtilities::MakePoint
  u.make_spec = HeatStressWarningUtilities::MakeSpec
  u.make_url = HeatStressWarningUtilities::MakeUrl
  u.param = HeatStressWarningUtilities::Param
  u.prepare_auth = HeatStressWarningUtilities::PrepareAuth
  u.prepare_body = HeatStressWarningUtilities::PrepareBody
  u.prepare_headers = HeatStressWarningUtilities::PrepareHeaders
  u.prepare_method = HeatStressWarningUtilities::PrepareMethod
  u.prepare_params = HeatStressWarningUtilities::PrepareParams
  u.prepare_path = HeatStressWarningUtilities::PreparePath
  u.prepare_query = HeatStressWarningUtilities::PrepareQuery
  u.result_basic = HeatStressWarningUtilities::ResultBasic
  u.result_body = HeatStressWarningUtilities::ResultBody
  u.result_headers = HeatStressWarningUtilities::ResultHeaders
  u.transform_request = HeatStressWarningUtilities::TransformRequest
  u.transform_response = HeatStressWarningUtilities::TransformResponse
}
