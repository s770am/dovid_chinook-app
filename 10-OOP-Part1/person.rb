class Person

    def initialize(fname, lname)
        @first_name= fname
        @last_name = lname
        @energy_level = 10

        @awake = true
    end

    #INSTANCE METHOD
    attr_accessor :first_name, :energy_level
    attr_reader :last_name
    attr_writer :awake

    #attribute readers
    # def first_name
    #      @first_name
    # end

    def last_name
        @last_name
    end

    #attribute writer
    # def first_name=(fname)
    #     @first_name = fname
    # end

    def walk
        @energy_level -=2
    end

    def full_name
        return "#{@first_name} #{@last_name}"
    end

    def greetings
        if @awake
            return "Hello from #{full_name}"
        else
            return "#{full_name} is sleeping!! Zzzzzz"
        end
    end
end


me = Person.new("John", "Smith")
you = Person.new("Ann", "Smith")
p me

3.times do
    me.walk 
end


p me.first_name

me.first_name=("Joe")

p me

p me.energy_level = 20

p me.full_name

p you.full_name 

p you.greetings

you.awake = false

p you.greetings
