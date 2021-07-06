require_relative "person.rb"

class Professor < Person
    
    def initialize(x,y)
        super(x,y)
    end

    def teach(student)
        student.learn
    end

    def teachCohort(students)
        students.each { |student| student.learn }
    end
    
    def giveBonus(students)
        students.each { |student| student.rewardBonus }
    end

end

# pro = Professor.new('Severus','Snape')
# pro.hi
# pro.testPrivate