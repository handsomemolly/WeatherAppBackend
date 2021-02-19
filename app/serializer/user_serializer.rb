class UserSerializer < ActiveModel::Serializer
    attributes :username, :password, :email, :id
    has_many :user_locations
    has_many :locations, through: :user_locations

    # def all_user_locations
    #   UserLocation.all.filter{|l| l.user_id == }
    # end
  end