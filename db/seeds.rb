# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "vodca")
Ingredient.create(name: "rum")
Ingredient.create(name: "crushed ice")
Ingredient.create(name: "citron")
Ingredient.create(name: "gin")
Ingredient.create(name: "martini")
Ingredient.create(name: "juice")
Ingredient.create(name: "jägermeister")

Cocktail.create(name:"Mojito")
Cocktail.create(name:"Bloody Mary")
Cocktail.create(name:"Sex on the Beach")
Cocktail.create(name:"Magarita")
Cocktail.create(name:"Pina Colada")
Cocktail.create(name:"Jägermeister")
Cocktail.create(name:"Martini")
Cocktail.create(name:"Vodca")
