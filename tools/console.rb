require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bakery_1 = Bakery.new("Ansels")
bakery_2 = Bakery.new("Mudpies")
bakery_3 = Bakery.new("BlueStove")

ingredient_1 = Ingredient.new("Apple", 23)
ingredient_2 = Ingredient.new("Cherry", 50)
ingredient_3 = Ingredient.new("Strawberry", 10)

dessert_1 = Dessert.new("apple-pie", [ingredient_1, ingredient_2], bakery_3)
dessert_2 = Dessert.new("mudpie", [ingredient_2, ingredient_3], bakery_2)
dessert_3 = Dessert.new("peach-ie", [ingredient_3, ingredient_1], bakery_1)

binding.pry

Pry.start
