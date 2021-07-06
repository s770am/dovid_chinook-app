module Magic 
    def spells
        p "Abra-ka-Dabra"
    end

    def Herbology
        p "Go Green"
    end

end

module Science
    def light?(value)
        if value == "wave"
            p "sorry light is particle in nature"
        end
        if value == "particle"
            p "sorry light is particle in wave"
        end
    end
end