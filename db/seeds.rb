# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.create!(
  name: "Noodle",
  description: "soft",
  image_url: "",
  rating: 4.3
)

Recipe.create!(
  name: "Salad",
  description: "nice",
  image_url: "",
  rating: 4.5
)

Recipe.create!(
  name: "Rice",
  description: "Hot",
  image_url: "",
  rating: 4.6
)
Recipe.create!(
  name: "Steak",
  description: "Juicy",
  image_url: "",
  rating: 4.9
)

puts "#{Recipe.count} recipes careated!"
