require 'adwords4r/v9/CriterionService'
require 'soap/mapping'

module AdWords; module CriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::CriterionService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiError",
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CriterionService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiException",
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::CriterionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CriterionService::GeoTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "GeoTarget",
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]],
      ["metros", "SOAP::SOAPString[]", [1, nil]],
      ["regions", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CriterionService::Keyword,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "Keyword",
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["criterionType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["negative", "SOAP::SOAPBoolean"],
      ["paused", "SOAP::SOAPBoolean", [0, 1]],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["minCpc", "SOAP::SOAPLong", [0, 1]],
      ["proxyMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.set(
    AdWords::CriterionService::LanguageTarget,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => AdWords::CriterionService::StatsRecord,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "StatsRecord",
    :schema_element => [
      ["averagePosition", "SOAP::SOAPDouble"],
      ["clicks", "SOAP::SOAPLong"],
      ["conversionRate", "SOAP::SOAPDouble"],
      ["conversions", "SOAP::SOAPLong"],
      ["cost", "SOAP::SOAPLong"],
      ["id", "SOAP::SOAPLong"],
      ["impressions", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CriterionService::Website,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "Website",
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["criterionType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["negative", "SOAP::SOAPBoolean"],
      ["paused", "SOAP::SOAPBoolean", [0, 1]],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["maxCpm", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CriterionService::CriterionStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CriterionStatus"
  )

  EncodedRegistry.register(
    :class => AdWords::CriterionService::CriterionType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CriterionType"
  )

  EncodedRegistry.register(
    :class => AdWords::CriterionService::KeywordType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordType"
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiError",
    :schema_qualified => false,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiException",
    :schema_qualified => false,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::CriterionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GeoTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "GeoTarget",
    :schema_qualified => false,
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]],
      ["metros", "SOAP::SOAPString[]", [1, nil]],
      ["regions", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::Keyword,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "Keyword",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["criterionType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["negative", "SOAP::SOAPBoolean"],
      ["paused", "SOAP::SOAPBoolean", [0, 1]],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["minCpc", "SOAP::SOAPLong", [0, 1]],
      ["proxyMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::LanguageTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "LanguageTarget",
    :schema_element => [
      ["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "languages")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::StatsRecord,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "StatsRecord",
    :schema_qualified => false,
    :schema_element => [
      ["averagePosition", "SOAP::SOAPDouble"],
      ["clicks", "SOAP::SOAPLong"],
      ["conversionRate", "SOAP::SOAPDouble"],
      ["conversions", "SOAP::SOAPLong"],
      ["cost", "SOAP::SOAPLong"],
      ["id", "SOAP::SOAPLong"],
      ["impressions", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::Website,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "Website",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["criterionType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["negative", "SOAP::SOAPBoolean"],
      ["paused", "SOAP::SOAPBoolean", [0, 1]],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["maxCpm", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::CriterionStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CriterionStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::CriterionType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CriterionType"
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::KeywordType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordType"
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::AddCriteria,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "addCriteria",
    :schema_element => [
      ["criteria", ["AdWords::CriterionService::Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "criteria")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::AddCriteriaResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "addCriteriaResponse",
    :schema_element => [
      ["addCriteriaReturn", ["AdWords::CriterionService::Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "addCriteriaReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::CheckCriteria,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "checkCriteria",
    :schema_qualified => true,
    :schema_element => [
      ["criteria", "AdWords::CriterionService::Criterion[]", [1, nil]],
      ["languageTarget", "AdWords::CriterionService::LanguageTarget"],
      ["geoTarget", "AdWords::CriterionService::GeoTarget"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::CheckCriteriaResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "checkCriteriaResponse",
    :schema_element => [
      ["checkCriteriaReturn", ["AdWords::CriterionService::ApiError[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "checkCriteriaReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "fault",
    :schema_qualified => true,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::CriterionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GetAllCriteria,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getAllCriteria",
    :schema_qualified => true,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GetAllCriteriaResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getAllCriteriaResponse",
    :schema_element => [
      ["getAllCriteriaReturn", ["AdWords::CriterionService::Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "getAllCriteriaReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GetCampaignNegativeCriteria,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getCampaignNegativeCriteria",
    :schema_qualified => true,
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GetCampaignNegativeCriteriaResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getCampaignNegativeCriteriaResponse",
    :schema_element => [
      ["getCampaignNegativeCriteriaReturn", ["AdWords::CriterionService::Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "getCampaignNegativeCriteriaReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GetCriteria,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getCriteria",
    :schema_qualified => true,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["criterionIds", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GetCriteriaResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getCriteriaResponse",
    :schema_element => [
      ["getCriteriaReturn", ["AdWords::CriterionService::Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "getCriteriaReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GetCriterionStats,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getCriterionStats",
    :schema_qualified => true,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["criterionIds", "SOAP::SOAPLong[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::GetCriterionStatsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getCriterionStatsResponse",
    :schema_element => [
      ["getCriterionStatsReturn", ["AdWords::CriterionService::StatsRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "getCriterionStatsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::RemoveCriteria,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "removeCriteria",
    :schema_qualified => true,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["criterionIds", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::RemoveCriteriaResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "removeCriteriaResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::SetCampaignNegativeCriteria,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "setCampaignNegativeCriteria",
    :schema_qualified => true,
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["criteria", "AdWords::CriterionService::Criterion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::SetCampaignNegativeCriteriaResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "setCampaignNegativeCriteriaResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::UpdateCriteria,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "updateCriteria",
    :schema_element => [
      ["criteria", ["AdWords::CriterionService::Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "criteria")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CriterionService::UpdateCriteriaResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "updateCriteriaResponse",
    :schema_qualified => true,
    :schema_element => []
  )
end

end; end
