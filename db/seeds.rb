# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.delete_all
User.delete_all

sf = Location.create(city: 'San Francisco', longitude: -122.4194, latitude: 37.7749)
seattle = Location.create(city: 'Seattle', longitude: -122.3351, latitude: 47.6080)

juan = User.create(username: 'thejuanandonly', password: '123', email: 'juan@yahoo.com')