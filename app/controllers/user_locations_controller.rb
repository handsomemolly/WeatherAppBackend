class UserLocationsController < ApplicationController
    def index
        user_locations = UserLocation.all
        render json: user_locations
    end
    
    
    def show
        byebug
        user_location = UserLocation.find_by(id: params[:id])
        render json: user_location
    end

    def create
        user_location = UserLocation.create(user_location_params)
        render json: user_location
    end

    def update
        user_location = UserLocation.find_by(id: params[:id])
        user_location.update(default: user_location.default)
        render json: user_location
    end

    def destroy
        user_location = UserLocation.find_by(id: params[:id])
        user_location.destroy
        render json: user_location
    end

    def render_request
        response = UserLocation.get_request
        render json: {lmao: response}
    end
    


    private

    def user_location_params
        params.require(:user_location).permit(:default, :user_id, :location_id)
    end
end
