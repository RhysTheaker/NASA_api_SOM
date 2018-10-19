require 'httparty'
require 'json'

class NEOIndexService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1/feed?'

attr_accessor :start_date, :end_date

  def initialize start_date, end_date
    @start_date = start_date
    @end_date = end_date
    @api_key = 'HpGOoBAi8OYzrVXmu8s6A6Jn1dWgc4RsjkGPvwiz'
    @neo = JSON.parse(Self.class.get("start_date=#{start_date}&end_date=#{end_date}&api_key=#{api_key}").body)
  end
