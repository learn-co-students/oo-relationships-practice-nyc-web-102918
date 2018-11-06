class Trip
    attr_accessor :listing, :guest

    @@all = []
    def initialize(guest, listing)
        @listing = listing
        @guest = guest
        self.class.all << self
    end

    def self.all
        @@all
    end

end