class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def self.get_request
    url = "https://api.openweathermap.org/data/2.5/onecall?lat=37.7749&lon=-122.4194&units=imperial&exclude={part}&appid=#{API}"
    JSON.parse(RestClient.get(url))
  end
end
