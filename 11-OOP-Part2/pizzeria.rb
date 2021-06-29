
require_relative('pizza')
class Pizzeria

    #class variable
    @@all_pizzeria = []
    @@total_sales = 0

    def initialize(shop_name)
        @name = shop_name
        @is_open = false
        @stock = 0
        @pizza_sales = 0
        @@all_pizzeria << self
    end
   
    attr_accessor :pizza_sales, :name, :is_open

    #class methods
    def self.total_sales
        @@total_sales
    end

    def self.show_shops
        # p @@all_pizzeria
        @@all_pizzeria.each_with_index do |shop, idx|
            p "**********Shop #{idx + 1}****************"
            p "     Name::::: #{shop.name}"
            p "     # of sales:: #{shop.pizza_sales}"
            p "     Open::::: #{shop.is_open }"
        end

    end

    def self.local_sales(store)
        return store.pizza_sales
    end

    def open
        @is_open = true
    end

    def close
        @is_open = false
    end

    def restock
        if @is_open == false
        @stock += 5
        end
    end

    def order(toppings)
        #check if it is open and if there is stock
        if @is_open && @stock > 0
        # stock drcreases
        @stock -= 1
        #pizza sales increments by 1
        @pizza_sales += 1
        @@total_sales += 1 #class variable 
        new_pizza = Pizza.new(toppings)
        #bake the pizza
        new_pizza.bake
        #cut the pizza
        4.times do
            new_pizza.cut     
        end
       
        #return the pizza
        return new_pizza
        end

    end

end


super_pizza = Pizzeria.new("Super Pizza")

awesome_pizza = Pizzeria.new("Awesome Pizza")


p super_pizza


super_pizza.restock
super_pizza.open 

awesome_pizza.restock 
awesome_pizza.open

p super_pizza

my_pizza = super_pizza.order(["cheese", "mushrooms"])
my_pizza = super_pizza.order(["cheese", "mushrooms"])
my_pizza = super_pizza.order(["cheese", "mushrooms"])
my_pizza = super_pizza.order(["cheese", "mushrooms"])
my_pizza = super_pizza.order(["cheese", "mushrooms"])

new_pizza = awesome_pizza.order(["onions", "olives"])

p super_pizza
p awesome_pizza

p Pizzeria.total_sales


Pizzeria.show_shops 

p Pizzeria.local_sales(super_pizza)

