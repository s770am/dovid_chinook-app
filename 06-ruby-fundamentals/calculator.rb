puts "Welcome to my app"

puts "Enter the first number"

first_number = gets.chomp.to_f 


puts " Enter the second number "

second_number = gets.chomp .to_f


puts "operations (+ , -, * , /)"

operations = gets.chomp 

if operations == "+"
    puts first_number + second_number
elsif operations == '-'
    puts first_number - second_number
elsif operations == '*'
    puts first_number * second_number

elsif operations == '/'
    puts first_number / second_number

else 
    puts "not a valid operation"
end