# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


trip1 = Trip.create(destination: "Hawaii", start_date: "2022-02-16", end_date: "2022-02-24")
bathingsuit = PackingItem.create(trip_id: 1, item: "bathing suit" )
hat = PackingItem.create(trip_id: 1, item: "hat" )
hiking = ItineraryItem.create(trip_id: 1, description: "Go on a nice hike!")
trip2 = Trip.create(destination: "Florida", start_date: "2021-12-14", end_date: "2021-12-19")
sunscreen = PackingItem.create(trip_id: 2, item: "sunscreen")

# Trip.destroy_all

# can run rake db: drop  ->  rake db:migrate  ->  rake db:seed again