puts 'Exercise 14: Prompting and Passing'

user = ARGV.first
prompt = '> '

# Interactive shell game
# Print the questions
# Get the answers from the user input
# Print the answers at the end
puts
puts "Hi #{user}, I'm the #{$0} script."
puts "I'm gonna ask some questions! Aye"
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp

puts "What kinda computer do you have?"
print prompt
computer = STDIN.gets.chomp

# Extra Credit 3.
puts "Do you like programming"
print prompt
prog = STDIN.gets.chomp

puts <<MESSAGE
Alright, you said "#{likes}" about liking me. Yeah, whatever
You're living in #{lives}. Don't really know where that is though
You have a #{computer} machine. Nice
Your attitude about programming: #{prog}
MESSAGE

puts
puts 'Extra Credit'
puts '1. Find Zork and Adventure'
puts 'http://thcnet.net/zork/index.php'
puts 'It was quite fun. I got down to the Dungeon.'

puts
puts '2. Change the prompt'
puts 'I\'m not in the mood.'

puts
puts '3. Add another argument'