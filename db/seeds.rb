# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'



# db/seeds.rb
puts "Cleaning database..."
Ingredient.destroy_all

puts "Creating ingredients..."
request_uri = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = open(request_uri).read
ingredients_hash = JSON.parse(ingredients)

ingredients_array = ingredients_hash["drinks"]
ingredients_array.each do |ingredient|
name = ingredient["strIngredient1"]

i = Ingredient.create(name: name)
puts "created #{i.name}"
end

p ingredients_array

screwdriver = Cocktail.create(name: "Screwdriver")
p "Screwdriver created #{screwdriver}"
# d = Dose.new(description: "100ml", ingredient: Ingredient.all.sample)
# p "DOSE #{d} "
# d.cocktail = screwdriver
# d.save


Cocktail.create(name: "Mojito")
Cocktail.create(name: "Pina Colata")
Cocktail.create(name: "Long Island")
Cocktail.create(name: "Gin & Tonic")
Cocktail.create(name: "Pink & Girly")
puts ""
