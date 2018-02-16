# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

p "test"
cocktail1 = Cocktail.create!(name: "SPICED COLA")
cocktail2 = Cocktail.create!(name: "PUNCH PLANTEUR")
p "test 2"
ingredient1 = Ingredient.create!(name: "Spiced Golden")
ingredient2 = Ingredient.create!(name: "cola")
ingredient3 = Ingredient.create!(name: "jus de citron vert")

ingredient4 = Ingredient.create!(name: "rhum blanc")
ingredient5 = Ingredient.create!(name: "sirop de canne roux")
ingredient6 = Ingredient.create!(name: "nectar planteur des îles")

Dose.create!(description: "4cl", cocktail: cocktail1, ingredient: ingredient1)
Dose.create!(description: "12cl",cocktail: cocktail1, ingredient: ingredient2)
Dose.create!(description: "2cl",cocktail: cocktail1, ingredient: ingredient3)

Dose.create!(description: "4cl", cocktail: cocktail2, ingredient: ingredient4)
Dose.create!(description: "2cl",cocktail: cocktail2, ingredient: ingredient5)
Dose.create!(description: "12cl",cocktail: cocktail2, ingredient: ingredient6)


# require 'open-uri'
# require 'json'

# ingredients = JSON.parse(open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)['drinks']
# ingredients.each do |ingredient|
#     ingredient = Ingredient.new(
#       name: "#{ingredient['strIngredient1']}"
#     )
#     ingredient.save!
# end
