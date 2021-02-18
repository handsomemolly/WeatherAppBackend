# require '../../APIkey2.rb'

class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :location



  def self.get_request(latitude, longitude)
    api = ENV["WEATHER_API_KEY"]
    url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{latitude}&lon=#{longitude}&units=imperial&exclude={part}&appid=#{api}"
    JSON.parse(RestClient.get(url))
  end

  # def self.get_request(location)
  #   api = ENV["WEATHER_API_KEY"]
  #   url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{location.latitude}&lon=-#{location.longitude}&units=imperial&exclude={part}&appid=#{api}"
  #   JSON.parse(RestClient.get(url))
  # end
end
