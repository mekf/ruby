puts 'Exercise 13: Parameters, Unpacking, Variables'

# Argument Variable ARGV
# Unpack the ARGV being passed from the prompt
# And then assign them to 3 other variables
first, second, third = ARGV

# extra credit 2.
print 'now type your 4th argument: '
fourth = STDIN.gets.chomp

# Type this into the terminal
# ruby <name_of_script> first 2nd 3rd

# the name of the script is stored in a special variable: $0
puts "The script is called: #{$0}"

# print the unpacked variables
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

puts
puts 'Extra Credit'
puts '1. Using less than 3 arguments'
puts 'The script leave the last variable blank if there\'s one missing arg and so on'

puts
puts '2. use STDIN.gets.chomp'
puts "Your fourth variable is: #{fourth}"