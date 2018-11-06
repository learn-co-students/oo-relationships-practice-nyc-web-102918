class Actor
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters 
        Character.all.select{|character| character.actor == self}
    end

    def characters_names
        characters.map{|character| character.name}.uniq
    end

    def self.most_characters
        @@all.sort_by{|actor| actor.characters_names.count}.last
    end
end