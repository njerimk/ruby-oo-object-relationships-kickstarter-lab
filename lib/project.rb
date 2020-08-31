class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        ProjectBacker.all.select do |pj|
            pj.project == self
        end.map do |back|
            back.backer
        end   
    end
end