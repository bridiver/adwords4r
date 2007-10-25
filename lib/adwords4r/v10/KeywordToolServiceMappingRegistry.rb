require 'adwords4r/v10/KeywordToolService'
require 'soap/mapping'

module AdWords; module KeywordToolService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV10 = "https://adwords.google.com/api/adwords/v10"

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::ApiError,
    :schema_type => XSD::QName.new(NsV10, "ApiError"),
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
    :class => AdWords::KeywordToolService::ApiException,
    :schema_type => XSD::QName.new(NsV10, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::KeywordVariation,
    :schema_type => XSD::QName.new(NsV10, "KeywordVariation"),
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["language", "SOAP::SOAPString"],
      ["searchVolumeScale", "SOAP::SOAPInt"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::KeywordVariations,
    :schema_type => XSD::QName.new(NsV10, "KeywordVariations"),
    :schema_element => [
      ["additionalToConsider", "AdWords::KeywordToolService::KeywordVariation[]", [1, nil]],
      ["moreSpecific", "AdWords::KeywordToolService::KeywordVariation[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::SeedKeyword,
    :schema_type => XSD::QName.new(NsV10, "SeedKeyword"),
    :schema_element => [
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "AdWords::KeywordToolService::KeywordType"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::SiteKeyword,
    :schema_type => XSD::QName.new(NsV10, "SiteKeyword"),
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["groupId", "SOAP::SOAPInt"],
      ["searchVolumeScale", "SOAP::SOAPInt"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::SiteKeywordGroups,
    :schema_type => XSD::QName.new(NsV10, "SiteKeywordGroups"),
    :schema_element => [
      ["groups", "SOAP::SOAPString[]", [1, nil]],
      ["keywords", "AdWords::KeywordToolService::SiteKeyword[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::KeywordType,
    :schema_type => XSD::QName.new(NsV10, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::ApiError,
    :schema_type => XSD::QName.new(NsV10, "ApiError"),
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
    :class => AdWords::KeywordToolService::ApiException,
    :schema_type => XSD::QName.new(NsV10, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::KeywordVariation,
    :schema_type => XSD::QName.new(NsV10, "KeywordVariation"),
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["language", "SOAP::SOAPString"],
      ["searchVolumeScale", "SOAP::SOAPInt"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::KeywordVariations,
    :schema_type => XSD::QName.new(NsV10, "KeywordVariations"),
    :schema_element => [
      ["additionalToConsider", "AdWords::KeywordToolService::KeywordVariation[]", [1, nil]],
      ["moreSpecific", "AdWords::KeywordToolService::KeywordVariation[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::SeedKeyword,
    :schema_type => XSD::QName.new(NsV10, "SeedKeyword"),
    :schema_element => [
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "AdWords::KeywordToolService::KeywordType"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::SiteKeyword,
    :schema_type => XSD::QName.new(NsV10, "SiteKeyword"),
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["groupId", "SOAP::SOAPInt"],
      ["searchVolumeScale", "SOAP::SOAPInt"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::SiteKeywordGroups,
    :schema_type => XSD::QName.new(NsV10, "SiteKeywordGroups"),
    :schema_element => [
      ["groups", "SOAP::SOAPString[]", [1, nil]],
      ["keywords", "AdWords::KeywordToolService::SiteKeyword[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::KeywordType,
    :schema_type => XSD::QName.new(NsV10, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::ApiException,
    :schema_name => XSD::QName.new(NsV10, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::GetKeywordVariations,
    :schema_name => XSD::QName.new(NsV10, "getKeywordVariations"),
    :schema_element => [
      ["seedKeywords", "AdWords::KeywordToolService::SeedKeyword[]", [1, nil]],
      ["useSynonyms", "SOAP::SOAPBoolean"],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::GetKeywordVariationsResponse,
    :schema_name => XSD::QName.new(NsV10, "getKeywordVariationsResponse"),
    :schema_element => [
      ["getKeywordVariationsReturn", "AdWords::KeywordToolService::KeywordVariations"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::GetKeywordsFromSite,
    :schema_name => XSD::QName.new(NsV10, "getKeywordsFromSite"),
    :schema_element => [
      ["url", "SOAP::SOAPString"],
      ["includeLinkedPages", "SOAP::SOAPBoolean"],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::GetKeywordsFromSiteResponse,
    :schema_name => XSD::QName.new(NsV10, "getKeywordsFromSiteResponse"),
    :schema_element => [
      ["getKeywordsFromSiteReturn", "AdWords::KeywordToolService::SiteKeywordGroups"]
    ]
  )

end

end; end
