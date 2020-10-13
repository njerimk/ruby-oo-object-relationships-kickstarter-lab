class Backer

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def backed_projects
        ProjectBacker.all.select do |proj_back|
            proj_back.backer == self
        end.map do |backer|
            backer.project
        end
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

end