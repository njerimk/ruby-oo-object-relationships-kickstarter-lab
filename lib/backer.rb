require 'pry'
class Backer

    attr_reader :name
    #attr_accessor #:projects


    def initialize(name)
        @name = name
       # @back_projects = []
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end
    #binding.pry

    def backed_projects
        ProjectBacker.all.select do |select_backer|
            select_backer.backer == self
        end.map do |new_project|
           new_project.project
        end
    end
        #binding.pry
       
        


end