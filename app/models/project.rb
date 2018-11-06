class Project
    attr_accessor  :name, :goal

    @@all = []

    def initialize(name, goal= 0)
        @goal = goal
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select{|pledge| pledge.project == self && pledge.amount > 0}
    end

    def above_goal?
        if goal== 0
            false
        else

            pledge_amount_array = pledges.map{|pledge| pledge.amount}

            pledge_amount = pledge_amount_array.inject(:+)

            pledge_amount >= goal
        end
    end

    def self.no_pledges
        all.select{|project| project.pledges.count == 0}
    end

    def self.above_goal
        all.select{|project| project.above_goal?}
    end


    def self.most_backers
        all.sort{|projectA, projectB| projectA.pledges.count <=> projectB.pledges.count}.last
    end


end