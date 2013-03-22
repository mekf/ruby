puts "Exercise 33: While Loop"

i = 0
num = []

while i < 6
  puts "# at the top of while: #{i}"
  num.push(i)

  i += 1
  puts "# now: #{num}"
  puts "# at the bottom of while: #{i}"
end

puts "\nThe number:"
for i in num
  puts i
end