require 'pry'
#require_relative './project_backer.rb'

class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select do |row|
            row.project == self
        end.map do |column|
            column.backer
        end
    end

    

end