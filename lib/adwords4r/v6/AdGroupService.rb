module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v6}getAdGroupList
class GetAdGroupList < ::Array
  @@schema_element = [
    ["adgroupIDs", ["SOAP::SOAPInt[]", XSD::QName.new("https://adwords.google.com/api/adwords/v6", "adgroupIDs")]]
  ]
end

# {https://adwords.google.com/api/adwords/v6}getAdGroupListResponse
class GetAdGroupListResponse < ::Array
  @@schema_element = [
    ["getAdGroupListReturn", ["AdGroup[]", XSD::QName.new("https://adwords.google.com/api/adwords/v6", "getAdGroupListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v6}getAllAdGroups
class GetAllAdGroups
  @@schema_type = "getAllAdGroups"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignID", "SOAP::SOAPInt"]
  ]

  attr_accessor :campaignID

  def initialize(campaignID = nil)
    @campaignID = campaignID
  end
end

# {https://adwords.google.com/api/adwords/v6}getAllAdGroupsResponse
class GetAllAdGroupsResponse < ::Array
  @@schema_element = [
    ["getAllAdGroupsReturn", ["AdGroup[]", XSD::QName.new("https://adwords.google.com/api/adwords/v6", "getAllAdGroupsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v6}getAdGroup
class GetAdGroup
  @@schema_type = "getAdGroup"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v6}getAdGroupResponse
class GetAdGroupResponse
  @@schema_type = "getAdGroupResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getAdGroupReturn", "AdGroup"]
  ]

  attr_accessor :getAdGroupReturn

  def initialize(getAdGroupReturn = nil)
    @getAdGroupReturn = getAdGroupReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}addAdGroup
class AddAdGroup
  @@schema_type = "addAdGroup"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignID", "SOAP::SOAPInt"],
    ["newData", "AdGroup"]
  ]

  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = nil)
    @campaignID = campaignID
    @newData = newData
  end
end

# {https://adwords.google.com/api/adwords/v6}addAdGroupResponse
class AddAdGroupResponse
  @@schema_type = "addAdGroupResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["addAdGroupReturn", "AdGroup"]
  ]

  attr_accessor :addAdGroupReturn

  def initialize(addAdGroupReturn = nil)
    @addAdGroupReturn = addAdGroupReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}addAdGroupList
class AddAdGroupList
  @@schema_type = "addAdGroupList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignID", "SOAP::SOAPInt"],
    ["newData", "AdGroup[]"]
  ]

  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = [])
    @campaignID = campaignID
    @newData = newData
  end
end

# {https://adwords.google.com/api/adwords/v6}addAdGroupListResponse
class AddAdGroupListResponse < ::Array
  @@schema_element = [
    ["addAdGroupListReturn", ["AdGroup[]", XSD::QName.new("https://adwords.google.com/api/adwords/v6", "addAdGroupListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v6}updateAdGroup
class UpdateAdGroup
  @@schema_type = "updateAdGroup"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["changedData", "AdGroup"]
  ]

  attr_accessor :changedData

  def initialize(changedData = nil)
    @changedData = changedData
  end
end

# {https://adwords.google.com/api/adwords/v6}updateAdGroupResponse
class UpdateAdGroupResponse
  @@schema_type = "updateAdGroupResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v6}updateAdGroupList
class UpdateAdGroupList < ::Array
  @@schema_element = [
    ["changedData", ["AdGroup[]", XSD::QName.new("https://adwords.google.com/api/adwords/v6", "changedData")]]
  ]
end

# {https://adwords.google.com/api/adwords/v6}updateAdGroupListResponse
class UpdateAdGroupListResponse
  @@schema_type = "updateAdGroupListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v6}getAdGroupStats
class GetAdGroupStats
  @@schema_type = "getAdGroupStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignId", "SOAP::SOAPInt"],
    ["adGroupIds", "SOAP::SOAPInt[]"],
    ["startDay", "SOAP::SOAPDate"],
    ["endDay", "SOAP::SOAPDate"],
    ["inPST", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :campaignId
  attr_accessor :adGroupIds
  attr_accessor :startDay
  attr_accessor :endDay
  attr_accessor :inPST

  def initialize(campaignId = nil, adGroupIds = [], startDay = nil, endDay = nil, inPST = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
    @startDay = startDay
    @endDay = endDay
    @inPST = inPST
  end
end

# {https://adwords.google.com/api/adwords/v6}getAdGroupStatsResponse
class GetAdGroupStatsResponse < ::Array
  @@schema_element = [
    ["getAdGroupStatsReturn", ["StatsRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v6", "getAdGroupStatsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v6}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_element = [
    ["code", "SOAP::SOAPInt"],
    ["internal", "SOAP::SOAPBoolean"],
    ["message", "SOAP::SOAPString"],
    ["trigger", "SOAP::SOAPString"],
    ["errors", "ApiError[]"]
  ]

  attr_accessor :code
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger
  attr_accessor :errors

  def initialize(code = nil, internal = nil, message = nil, trigger = nil, errors = [])
    @code = code
    @internal = internal
    @message = message
    @trigger = trigger
    @errors = errors
  end
end

# {https://adwords.google.com/api/adwords/v6}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_element = [
    ["index", "SOAP::SOAPInt"],
    ["field", "SOAP::SOAPString"],
    ["textIndex", "SOAP::SOAPInt"],
    ["textLength", "SOAP::SOAPInt"],
    ["trigger", "SOAP::SOAPString"],
    ["code", "SOAP::SOAPInt"],
    ["isExemptable", "SOAP::SOAPBoolean"],
    ["detail", "SOAP::SOAPString"]
  ]

  attr_accessor :index
  attr_accessor :field
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger
  attr_accessor :code
  attr_accessor :isExemptable
  attr_accessor :detail

  def initialize(index = nil, field = nil, textIndex = nil, textLength = nil, trigger = nil, code = nil, isExemptable = nil, detail = nil)
    @index = index
    @field = field
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
    @code = code
    @isExemptable = isExemptable
    @detail = detail
  end
end

# {https://adwords.google.com/api/adwords/v6}AdGroup
class AdGroup
  @@schema_type = "AdGroup"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_element = [
    ["campaignId", "SOAP::SOAPInt"],
    ["id", "SOAP::SOAPInt"],
    ["maxContentCpc", "SOAP::SOAPLong"],
    ["maxCpc", "SOAP::SOAPLong"],
    ["maxCpm", "SOAP::SOAPLong"],
    ["name", "SOAP::SOAPString"],
    ["status", "SOAP::SOAPString"]
  ]

  attr_accessor :campaignId
  attr_accessor :id
  attr_accessor :maxContentCpc
  attr_accessor :maxCpc
  attr_accessor :maxCpm
  attr_accessor :name
  attr_accessor :status

  def initialize(campaignId = nil, id = nil, maxContentCpc = nil, maxCpc = nil, maxCpm = nil, name = nil, status = nil)
    @campaignId = campaignId
    @id = id
    @maxContentCpc = maxContentCpc
    @maxCpc = maxCpc
    @maxCpm = maxCpm
    @name = name
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v6}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_element = [
    ["averagePosition", "SOAP::SOAPDouble"],
    ["clicks", "SOAP::SOAPLong"],
    ["conversionRate", "SOAP::SOAPDouble"],
    ["conversions", "SOAP::SOAPLong"],
    ["cost", "SOAP::SOAPLong"],
    ["id", "SOAP::SOAPLong"],
    ["impressions", "SOAP::SOAPLong"]
  ]

  attr_accessor :averagePosition
  attr_accessor :clicks
  attr_accessor :conversionRate
  attr_accessor :conversions
  attr_accessor :cost
  attr_accessor :id
  attr_accessor :impressions

  def initialize(averagePosition = nil, clicks = nil, conversionRate = nil, conversions = nil, cost = nil, id = nil, impressions = nil)
    @averagePosition = averagePosition
    @clicks = clicks
    @conversionRate = conversionRate
    @conversions = conversions
    @cost = cost
    @id = id
    @impressions = impressions
  end
end

# {https://adwords.google.com/api/adwords/v6}AdGroupStatus
class AdGroupStatus < ::String
  @@schema_type = "AdGroupStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"

  Deleted = AdGroupStatus.new("Deleted")
  Enabled = AdGroupStatus.new("Enabled")
  Paused = AdGroupStatus.new("Paused")
end
end