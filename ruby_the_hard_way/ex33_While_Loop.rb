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

puts
puts "3. Using for-loop n' range"

num_for = []
for j in (0..7)
  puts "\n# at the top of for: #{j}"
  num_for.push(j)

  # j += 1

  puts "# now: #{num_for}"
  puts "# at the bottom of for: #{j}"
end

puts
puts <<BLOCK
If for-loop is used with a range then the increment is not neccessary.
It will jump to the next value within the range automatically.
There will be no difference between the value at the top and bottom.
If we dont get rid of the increment then there will be the difference between the value
at the top and bottom of the for-loop.
BLOCK