require 'pry'
# code here!
class School
   attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(age)
        @roster[age]
    end

    def sort
        sortedHash = {}
        @roster.sort_by.each do |grade, name|
            sortedHash[grade] = name.sort
        end
        sortedHash
    end
end

