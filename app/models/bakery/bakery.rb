

class Bakery

  attr_accessor :desert_array, :name
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def deserts
    Desert.all.select do |each_desert|
      each_desert.bakery == self
    end
  end

  def ingredients
    ing_array = []
    self.deserts.each do |each_my_desert|
      each_my_desert.ingredients.each do |element|
        ing_array << element
      end
    end
    ing_array.uniq
  end

  def average_calories
    total_cals = 0
    self.deserts.each do |each_desert|
      total_cals += each_desert.calories
    end
    average_cals = total_cals/self.deserts.length
  end

  def shopping_list
    answerAr = []
    self.ingredients.each do |each_ingredient|
       answerAr << each_ingredient.name
    end
    answerAr
  end





end
