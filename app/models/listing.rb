class Listing
    attr_reader :city

    @@all = []
    def initialize(city)
        @city = city
        self.class.all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select{|trip| trip.listing == self}
    end

    def guests
        trips.map{|listing| listing.guest}
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        all.find{|listing| listing.city == city}.trips
    end

    def self.sorted_by_num_trips
        all.sort{|listingA, listingB| listingB.trip_count <=> listingA.trip_count}
    end
    def self.most_popular
        sorted_by_num_trips.first
    end
end