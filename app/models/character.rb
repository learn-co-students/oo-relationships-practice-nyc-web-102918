class Character
    attr_accessor :name, :actor, :movie, :show, :episode
    @@all = []
    def initialize(name, actor)
        @actor = actor
        @name = name
        @@all << self
    end

    def add_show(show)
        self.show = show  
    end

    def add_episode(episode)
        self.episode = episode
    end

    def add_movie(movie)
        self.movie = movie
    end

    def self.all
        @@all
    end

    def most_appearance
        @@all.select{|character| character == self}
    end


end