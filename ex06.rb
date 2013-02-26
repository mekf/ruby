# Exercise 6: Strings And Text
puts "Exercise 6: Strings And Text"

# assign to variable 'x' a string "There are ..."
x = "There are #{10} types of people."

# assign to variable 'binary' a string 'binary'
binary = "binary"

# assign to variable 'do_not' a string 'don't'
do_not = "don't"

# assign to variable y a string "Those who ..."
# ebd: binary
# ebd: do_not
y = "Those who know #{binary} and those who #{do_not}."

# print both x and y
puts x
puts y

# print two string with 'interpolation' of x and y
# ebd: x
puts "I said: #{x}."
# ebd: y
puts "I also said: #{y}."

# assign to variable 'hilarious' the value 'false'
hilarious = false

# assign to variable 'joke_evaluatoin' with a string which includes the interpolation of hilarious
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# print joke_evaluation
puts joke_evaluation

# assign strings to variables 'w' and 'e'
w = "This is the left side of..."
e = "a string with a right side."

# print the combination of 'w' and 'e'
puts w + e

puts 'Extra Credit'
puts '1. Commenting'
puts '2. Find where a string is put inside a string' # mark with embedded_string_here (ebd)
puts '3. Are there only 4 places?'
puts 'Yes. Because at the other place, other value is interpolated into a string. there are no embedded string'
puts '4. Explain why w + e makes a longer string'
puts "It's called concatenation"