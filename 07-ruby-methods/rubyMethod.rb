def actualeven(num)
    num % 2 == 0
end

def even(num)
    actualeven(num)
end

def start
    counter = 1
    while counter <= 10
        if even(counter)
            puts "The counter value:#{counter} is even"
        else
            puts "The counter value:#{counter} is odd"
        end
        counter = counter + 1
    end
end

capacity = "hi"

case capacity
when "hi"
    p "capacity is a word"
 when 0
    p "you run out of gas"
 when 1..20
    p "you are about to be empty"
 when 30
    p "you are fine"
 when 70..100
    p "you are almost full"
 else
    puts "ERROR::: invalid capacity #{capacity}"
end