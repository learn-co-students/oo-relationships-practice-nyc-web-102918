class Client
    attr_accessor :trainer, :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        self.class.all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        self.trainer = trainer
        trainer.clients << self
    end
end