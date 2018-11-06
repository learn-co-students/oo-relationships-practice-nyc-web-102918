class Show
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def big_screen_too?
        Character.all.any?{|character| character.movie.title == self.title}
    end
    def self.on_the_big_screen
        all.select{|show| show.big_screen_too?}
    end
end