class Person
    def initialize(firstName, lastName)
        @firstName = firstName
        @lastName = lastName
    end

    def fullName
        "#{@firstName} #{@lastName}"
    end
end

# p Person.new("Peter","Griffin")
