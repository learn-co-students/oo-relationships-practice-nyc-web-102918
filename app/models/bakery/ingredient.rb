

class Ingredients

  attr_accessor :desert, :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def desert
    Desert.all.find do |each_desert|
      each_desert.ingredients.include?(self)
    end
  end

  def bakery
    self.desert.bakery
  end

  def self.find_all_by_name(ing_string)
    newAr = []
    Ingredients.all.each do |each_ingredient|
    if  each_ingredient.name.include?(ing_string)
      newAr << each_ingredient
      end
    end
      newAr
  end



end
