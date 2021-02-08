class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers

        projects = ProjectBacker.all.select do |set|
            if set.project == self
                set.backer
            end
        end
        
        projects.collect do |element|
            element.backer
        end
        #answer
    end

end