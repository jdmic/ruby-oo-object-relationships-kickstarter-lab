require "pry"
class Backer
    
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects

        backers = ProjectBacker.all.select do |set|
            if set.backer == self
                set.project
            end
        end
        
        backers.collect do |element|
            element.project
        end
        #answer
    end
end