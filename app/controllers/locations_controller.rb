class LocationsController < ApplicationController
    def index
        locations = Location.all
        render json: locations
    end

    def create
      location = Location.create(city: params[:city])
      render json: location
    end

    def show
        location = Location.find_by(id: params[:id])
        render json: location
    end


    private

    def location_params
        params.require(:location).permit(:city, :longitude, :latitude)
    end




end
