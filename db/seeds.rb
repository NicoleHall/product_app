# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all


products = Product.create([
    {
      name: "Empty Bottle",
      ingredient: "Plastic"
    },
    {
      name: "Mirror",
      ingredient: "Glass"
    },
    {
      name: "Shirt",
      ingredient: "Cotton"
    },
    {
      name: "Water",
      ingredient: "H2O"
    },
    {
      name: "Star",
      ingredient: "Hot Gas"
    }
    
])

p "Created #{Product.count} products"