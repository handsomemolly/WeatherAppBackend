# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.delete_all
User.delete_all
UserLocation.delete_all

sf = Location.create(city: 'San Francisco', longitude: -122.4194, latitude: 37.7749)
seattle = Location.create(city: 'Seattle', longitude: -122.3351, latitude: 47.6080)
portland = Location.create(city: 'Portland', longitude: -122.6764, latitude: 45.5231)
san_diego = Location.create(city: 'San Diego', longitude: -117.1611, latitude: 32.7157)
las_vegas = Location.create(city: 'Las Vegas', longitude: -115.1398, latitude: 36.1699)
los_angeles = Location.create(city: 'Los Angeles', longitude: -118.2437, latitude: 34.0522)
san_jose = Location.create(city: 'San Jose', longitude: -121.8863, latitude: 37.3382)
sonoma = Location.create(city: 'Sonoma', longitude: -122.4580, latitude: 38.2919)
tacoma = Location.create(city: 'Tacoma', longitude: -122.4443, latitude: 47.2529)
sacramento = Location.create(city: 'Sacramento', longitude: -121.4944, latitude: 38.5816)
lake_tahoe = Location.create(city: 'Lake Tahoe', longitude: -120.0324, latitude: 39.0968)
gig_harbor = Location.create(city: 'Gig Harbor', longitude: -122.5801, latitude: 47.3293)
reno = Location.create(city: 'Reno', longitude: -119.8138, latitude: 39.5296)
kent = Location.create(city: 'Kent', longitude: -122.2348, latitude: 47.3809)
fresno = Location.create(city: 'Fresno', longitude: -119.7871, latitude: 36.7378)
olympia = Location.create(city: 'Olympia', longitude: -122.9007, latitude: 47.0379)




juan = User.create(username: 'thejuanandonly', password: '123', email: 'juan@yahoo.com')

ul1 = UserLocation.create(default: true, user_id: juan.id, location_id: sf.id)
ul2 = UserLocation.create(default: false, user_id: juan.id, location_id: seattle.id)