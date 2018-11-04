class Project
    attr_accessor :pledge, :owner, :name, :backers

    @@all = []

    def initialize(user, name, pledge)
        @owner = user
        @pledge = pledge
        @name = name
        @backers = []

        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.no_pledges
        all.select{|project| project.pledge.amount == 0}
    end

    def self.find_project(name)
        all.detect{|project| project.name == name}
    end

    def donate(backer_pledge)
        backers << backer_pledge
        pledge.amount -= backer_pledge.amount
        pledge.amount
    end

    def num_backers
        backers.length
    end

    def self.above_goal
        all.select{|project| project.pledge.amount <= 0}
    end

    def self.most_backers
        all.sort{|projectA, projectB| projectB.num_backers <=> projectA.num_backers}.first
    end

end