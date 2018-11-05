

class Desert

  attr_accessor :bakery, :ingredients, :calories, :name
  @@all = []

  def initialize(name, bakery, ingredient_array, calories)
    @bakery = bakery
    @ingredients = ingredient_array
    @calories = calories
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end







end
