
class Bakery

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.find {|dessert| dessert.bakery == self }
  end
  #return a number totaling the average
  #number of calories for the desserts
  #sold at this bakery
  def average_calories
    bakery_calories = desserts.ingredients.map do |ingredient|
      ingredient.calories
    end
    bakery_calories.inject{ |sum, el| sum + el }.to_f / bakery_calories.size
  end

  #return a string of names for
  #ingredients for the bakery
  def shopping_list
     shopping_list = desserts.ingredients.map do |ingredient|
       ingredient.name
     end
   end

end
