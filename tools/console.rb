require_relative '../config/environment.rb'

user1 = User.new("Joe")
user2 = User.new("Tom")
ingredient1 = Ingredient.new("Salt")
ingredient2 = Ingredient.new("Pepper")
ingredient3 = Ingredient.new("Sugar")
allergy1 = Allergy.new(user1, ingredient1)
recipe1 = Recipe.new("soup")
recipe2 = Recipe.new("sandwich")
recipe3 = Recipe.new("pasta")
recipe4 = Recipe.new("salad")
recipe5 = Recipe.new("pizza")
recipe_ingredient1 = RecipeIngredient.new(ingredient1, recipe1)
recipe1.add_ingredients([ingredient2, ingredient3])

user1.add_recipe_card("083120",3, recipe1)
user1.add_recipe_card("082020",2, recipe2)
user1.add_recipe_card("073120",4, recipe3)
user1.add_recipe_card("052420",1, recipe4)
user1.add_recipe_card("010120",5, recipe5)

user2.add_recipe_card("083120",4, recipe2)



binding.pry
