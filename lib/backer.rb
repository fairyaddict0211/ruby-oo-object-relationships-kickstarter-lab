require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_list = []
        ProjectBacker.all.each do |pb|
            if pb.backer == self
                project_list << pb.project
            end
        end  
        return project_list
    end
end
