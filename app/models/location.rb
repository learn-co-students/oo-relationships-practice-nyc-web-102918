class Location

    attr_reader :city

    @@all = []
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select{|client| client.location == self}
    end

    def num_clients
        clients.count
    end

    def self.least_clients
        all.sort{|locationA, locationB| locationA.num_clients <=> locationB.num_clients}.first
    end


end