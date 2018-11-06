class Ingredients
    attr_accessor :name
    attr_reader :bakery, :dessert, :calorie
    @@all = []

    def initialize(name, bakery, dessert, calorie)
        @bakery = bakery
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find_all_by_name(ingredient)
        all.find{|ingredient| ingredient.name == ingredient}
    end
end