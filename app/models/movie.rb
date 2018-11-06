class Movie
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def most_characters
        Character.all.select{|character| character.movie = self}
    end

    def self.most_actors
        Movie.all.sort_by{|movie| movie.most_characters.count}.first
    end

    def self.all
        @@all
    end


end