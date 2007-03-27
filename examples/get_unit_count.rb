#!/usr/bin/env ruby

# Use adwords4r in parent dir
$LOAD_PATH.unshift '../lib/'

require 'adwords4r'

begin
    adwords = AdWords::API.new
    # Get the units for the last month or so
    end_date = Date.today
    start_date = end_date - 31
    puts "result = #{adwords.getUnitCount(start_date, end_date).getUnitCountReturn}"

rescue AdWords::Error::UnknownAPICall => e
    puts e
rescue AdWords::Error::ApiError => e
    puts e.code
    puts e.message
end

