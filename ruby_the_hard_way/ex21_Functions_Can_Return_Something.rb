puts "Exercise 21: Functions Can Return Something"

def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b
end

def substract(a, b)
  puts "SUBSTRACTING #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  a / b
end

puts
puts "Let's do some math with just Functions:"

age = add(20, 6)
height = substract(190, 11)
weight = multiply(7.2, 10)
iq = divide(260, 2)

puts
puts "Age: #{age}, height: #{height}, weight: #{weight}, IQ: #{iq}"

puts
puts "Extra Credit"
puts "1. A puzzle for the extra credit, attempt this by hand"

what = add(age, substract(height, multiply(weight, divide(iq, 2))))
puts "That becomes: #{what}." # -4475.0

puts
puts "2. Calculate BMI index"
puts "\sBMI = mass(kg) / (height(m))^2"
puts 
def bmi_calculator(mass, height)
  mass / (height ** 2)
end

puts "What is your weight(kg): "
user_weight = gets.chomp.to_f
puts "What is your height(m): "
user_height = gets.chomp.to_f

user_bmi = bmi_calculator(user_weight, user_height)
puts "Your BMI index: #{user_bmi}"