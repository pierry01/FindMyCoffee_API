require 'rest-client'
require 'json'

class GetGoogleCoffeeListService
  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def call
    begin
      base_url = 'https://maps.googleapis.com/maps/api/place/textsearch/json'
      location = "location=#{@latitude},#{@longitude}"
      radius = 'radius=5000'
      key = "key=#{Rails.application.credentials.google_secret_key}"
      args = "?query=coffee+shops&#{location}&#{radius}&#{key}"
      final_url = "#{base_url}#{args}"

      response = RestClient.get final_url
      JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      puts e.message
      puts e.backtrace.inspect
    end
  end
end
