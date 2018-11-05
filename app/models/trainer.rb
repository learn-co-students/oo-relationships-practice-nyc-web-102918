class Trainer
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select{|client| client.trainer == self}
    end

    def num_clients
        clients.count
    end

    def self.most_clients
        all.sort{|trainerA, trainerB| trainerB.num_clients <=> trainerA.num_clients}.first
    end

end