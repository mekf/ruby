puts "Exercise 33: While Loop"

def while_loop(number, increment)
  i = 0
  num = []
  
  while i < number
    puts "\n# at the top of while: #{i}"
    num.push(i)

    i += increment
    puts "# now: #{num}"
    puts "# at the bottom of while: #{i}"
  end
end

# puts "\nThe number:"
# for i in num
#   puts i
# end

puts "\nExtra Credit:"

puts "1. Convert while loop to a function"
puts "2. Using a number for increment"

print "What's the numer for the bottom of the loop: "
number = gets.chomp.to_i
print "What's the numer for the increment: "
increment = gets.chomp.to_i

while_loop(number, increment)