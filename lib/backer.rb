class Backer
    @@all = []
    attr_reader :name

    def initialize (name)
        @name=name
        @@all<<self
    end
    
    def self.all
        @@all
    end

    def back_project(project)
        project_backer = ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.select{|project_backs| project_backs.backer==self}.map{|something| something.project}
    end

end