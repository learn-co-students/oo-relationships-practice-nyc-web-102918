class Dessert
    attr_accessor :name
    @@all = []

    def initialize(name)
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredients.all.select{|ingredient| ingredient.dessert ==self}
    end

    def bakery
        ingredients.detect{|ingredient| ingredient.bakery}
    end

    def calories
        ingredients.map{|ingredient| ingredient.calorie}.inject(:+)
    end
end