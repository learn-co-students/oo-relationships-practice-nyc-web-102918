class Pledge
    attr_accessor :amount, :user, :project
    @@all = [] 

    def initialize(project, user, amount = 0)
        @project = project
        @user = user
        @amount = amount
        self.class.all << self
    end

    def self.all
        @@all
    end


    def self.projects
        all.map{|pledge| pledge.project}.uniq
    end

end