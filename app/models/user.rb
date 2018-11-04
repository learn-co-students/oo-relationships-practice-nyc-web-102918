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


    def self.multi_pledger
        all.select{|user| user.backed_projects.length > 1}
    end


    def self.project_creator
        all.select{|user| user.projects}
    end

    def create_a_project(project_name, pledge_goal=0)

        pledge_goal = Pledge.new(pledge_goal)

        Project.new(self, project_name, pledge_goal)
    end

    def pledge_for_a_project(project_name, pledge_amount)
        project = Project.find_project(project_name)

        pledge = Pledge.donate(self, pledge_amount)

        project.donate(pledge)
    end

    def backed_projects
        Project.all.select do |project| 
            project.backers.find{|pledge| pledge.backer == self}
        end
    end

    def projects
        Project.all.select{|project| project.owner == self}
    end

    def total_pledge
        pledges_amount = backed_projects.map do |project| 
            project.backers.find{|pledge| pledge.backer ==self}.amount 
        end

        pledges_amount.inject(:+)
    end


end