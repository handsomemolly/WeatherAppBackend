require 'net/http'
require 'open-uri'
require 'json'

class MakeRequest < ActiveRecord::Base

    # @@location = Location.all.find_by(longitude: , latitude: )

    # @@url = URI("https://api.openweathermap.org/data/2.5/onecall?lat='#{@location.latitude}'&lon=#{@location.longitude}&exclude={part}&appid=bfb0f9ce0f1c23abb82d4e2a43fba953")
    URL = "https://api.openweathermap.org/data/2.5/onecall?lat=37.7749&lon=-122.4194&units=imperial&exclude={part}&appid=bfb0f9ce0f1c23abb82d4e2a43fba953"


    def self.get_request
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    
    def self.parse_json 
        parse_result = JSON.parse(get_request)
    end
end
