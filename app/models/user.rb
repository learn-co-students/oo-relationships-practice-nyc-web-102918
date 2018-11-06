class User
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name

        self.class.all << self
    end

    def self.all
        @@all
    end

    def project_creator?
        Pledge.all.find{|pledge| pledge.user == self && pledge.amount == 0}

    end

    def create_a_project(project_name, pledge_goal=0)
        project = Project.new(project_name, pledge_goal)

        Pledge.new(project, self)
    end

    def pledge_for_a_project(project_name, amount)
        project = Pledge.projects.find{|project| project.name == project_name}

        Pledge.new(project, self, amount)
    end

    def pledges
        Pledge.all.select{|pledge| pledge.user == self && pledge.amount > 0}
    end

    def pledges_sorted
        pledges.sort{|pledgeA, pledgeB| pledgeA.amount <=> pledgeB.amount}
    end

    def highest_pledge
        pledges_sorted.last.amount
    end

    def self.highest_pledge
        all.sort{|userA, userB| userA.highest_pledge <=> userB.highest_pledge}.last
    end

    def self.multi_pledger
        all.select{|user| user.pledges.count > 1}
    end
    
    def self.project_creator
        all.select{|user| user.project_creator?}
    end

end