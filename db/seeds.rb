# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.create(
  name: "Spaghetti Carbonara",
  description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream....",
  image_url: "https://example.com/spaghetti.jpg",
  rating: 4.5
)

Recipe.create(
  name: "Avocado Toast",
  description: "Quick, easy, and nutritious breakfast toast with smashed avocado and a sprinkle of chili.",
  image_url: "https://example.com/avocado_toast.jpg",
  rating: 4.0
)

Recipe.create(
  name: "Pancakes",
  description: "Fluffy pancakes perfect for a Sunday brunch.",
  image_url: "https://example.com/pancakes.jpg",
  rating: 4.8
)

Recipe.create(
  name: "Caprese Salad",
  description: "A fresh and simple Italian salad with mozzarella, tomatoes, and basil.",
  image_url: "https://example.com/caprese.jpg",
  rating: 4.2
)


puts "#{Recipe.count} recipes careated!"
