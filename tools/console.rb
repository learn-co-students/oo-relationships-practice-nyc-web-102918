require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ingredient1 = Ingredients.new("sugar mango")
ingredient2 = Ingredients.new("flour")
ingredient3 = Ingredients.new("mango")
bakery1 = Bakery.new("Magnolias")
bakery2 = Bakery.new("Sprinkles")

desert1 = Desert.new("Cupcake",bakery1, [ingredient1], 300)
desert2 = Desert.new("Smore",bakery2, [ingredient2], 600)
Pry.start
