require_relative "person.rb"

class Student < Person
    Level = 0
    def initialize(first, last)
        super(first,last)
        @knowledgeLevel = Level
    end

    def fullName
        "Student:: #{super()}"
    end

    def Slack
        @knowledgeLevel = @knowledgeLevel - 5 if @knowledgeLevel > 5
    end

    def learn 
        @knowledgeLevel = @knowledgeLevel + 10
    end

    def rewardBonus
        addBonusMark if @knowledgeLevel >= 30
    end

    private
    def addBonusMark
        @knowledgeLevel = @knowledgeLevel + 50
    end
end

# stewie = Student.new("Stewie", "Griffin")
# p stewie