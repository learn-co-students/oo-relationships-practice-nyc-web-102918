
class Dessert

  attr_accessor :name, :bakery, :ingredients

  @@all = []

  def initialize(name, ingredients, bakery)
    @name = name
    @ingredients = ingredients
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def calories
    ingredient_calories = self.ingredients.map do |ingredient|
      ingredient.calories
    end
    eval ingredient_calories.join '+'
  end

end
