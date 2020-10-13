require 'pry'
#require_relative './project_backer.rb'

class Backer

    attr_reader :name

    def initialize(name)
        #binding.pry
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select do |row|
            row.backer == self
        end.map do |column|
            column.project
        end
    
    end



end
