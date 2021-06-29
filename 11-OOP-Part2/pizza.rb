class Pizza
    
    def initialize(new_toppings)
        @toppings = new_toppings
        @baked = false
        @slices = 0
    end

    #instance methods
    def bake
        @baked = true
    end

    def cut
        if @baked
            @slices += 2
        end
    end

    def eat
        if @slices >= 1 && @baked
        @slices -= 1
        else 
            p "No more slices :( "
        end
    end
end


# p "---------------"

# pizza1 = Pizza.new(["cheese", "pepper"])
# puts pizza1.inspect

# p "--------------- bake pizza"

# pizza1.bake

# p pizza1

# p "---------------cutting the pizza"
# 4.times do
#     pizza1.cut
# end

# p pizza1
# p "---------------eating the pizza"
#    11.times do
#        pizza1.eat
#        p "::::::::::::::::::::::::::::::::::::"
#        p pizza1
#    end

 
# p "---------------"
# p "---------------"
# p "---------------"
# p "---------------"
