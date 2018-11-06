class Bakery
    attr_accessor :name
    @@all = []

    def initialize(name)
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredients.all.select{|ingredient| ingredient.bakery == self}
    end

    def desserts
        ingredients.all.map{|ingredient| ingredient.desserts}.uniq
    end

    def shoping_list
        ingredients.join(', ')
    end
    
    def average_calories
        total_calories = desserts.map{|dessert| dessert.calories}.inject(:+)

        total_calories/(desserts.count)
    end

end