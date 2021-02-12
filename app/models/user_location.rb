class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def self.get_request
    url = "https://api.openweathermap.org/data/2.5/onecall?lat=37.7749&lon=-122.4194&units=imperial&exclude={part}&appid=bfb0f9ce0f1c23abb82d4e2a43fba953"
    JSON.parse(RestClient.get(url))
  end



end
