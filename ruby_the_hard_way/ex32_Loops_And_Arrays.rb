puts "Exercise 32: Loops And Arrays"

count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# for-loop
for num in count
  puts "This is number: #{num}"
end

# each block
fruits.each do |fruit|
  puts "#{fruit}"
end

# mixed array
for i in change
  puts "I have #{i}"
end

# build array
elements = []

for i in (0..5)
  puts "Adding #{i} to the elements list."
  elements.push(i)
end

for i in elements
  puts "element: #{i}"
end

puts "\nExtra Credit:"
puts "2. avoid using for-loop in building array"

puts "num = (0..5).to_a"
num = (0..5).to_a
puts "num: #{num}"

puts
puts "3. resource on ruby array"
puts "http://www.tutorialspoint.com/ruby/ruby_arrays.htm"