class Pledge
    attr_accessor :backer, :amount, :owner
    @@all = [] 
    def initialize(amount = 0)
        @amount = amount
        self.class.all << self
    end

    def self.all
        @@all
    end


    def project
        Project.all.find{|project| project.pledge == self}
    end

    def user
        project.owner
    end

    def self.donate(backer, amount)
        pledge = new(amount)
        pledge.backer = backer
        pledge
    end
end