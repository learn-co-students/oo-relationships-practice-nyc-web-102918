
class Ingredient

  attr_accessor :name, :calories

  @@all = []

  def initialize(name, calories)
    @name = name
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)
    self.all.map do |ingredient|
      ingredient.include?(ingredient)
    end
  end

end
