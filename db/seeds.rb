# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
puts "Creating restaurants..."
dishoom = Restaurant.create!({ name: "Dishoom1", address: "7 Boundary St, London E2 7JE", category: "italian"})
dishoom = Restaurant.create!({ name: "Dishoom2", address: "7 Boundary St, London E2 7JE", category: "italian"})
dishoom = Restaurant.create!({ name: "Dishoom3", address: "7 Boundary St, London E2 7JE", category: "italian"})
dishoom = Restaurant.create!({ name: "Dishoom4", address: "7 Boundary St, London E2 7JE", category: "italian"})

# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4 }
# knoedel_quick = { name: "Knödel Quick", address: "Barcelona", rating: 5 }
# magic_mushrooms = { name: "Magic Mushrooms", address: "Barcelona", rating: 3 }
# kebap_king = { name: "Kebap King", address: "Barcelona", rating: 2 }
lecker = Review.new({ content: "very lecker", rating: 3})
lecker.restaurant = dishoom
lecker.save!

puts "Finished!"