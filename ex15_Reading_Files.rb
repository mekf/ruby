puts 'Exercise 15: Reading Files'
puts

# run the ruby script with the ex15_sample.txt as argument
# that would get the filename
# assign the filename as arg in the File.open() method
# assign the File.open() with filename as arg into 'txt' variable
filename = ARGV.first
txt = File.open(filename)

prompt = '> '

# print the filename (passed in as argument when the script is run)
# call method read() on txt
puts "Here's your file: #{filename}"
puts txt.read
txt.close
puts

# Get the user to type in the filename and then print it
# print the file if the file name is correct
# otherwise just says that the user made a mistake
puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp

if file_again != "ex15_sample.txt"
  puts "you typed it in wrong man"
else
  txt_again = File.open(file_again)
  puts txt_again.read
  txt_again.close
end

puts
puts "Extra Credit"
puts "1. Running the script with passed in arg, and with user input. Comment"
puts <<ANSWER
\s Running the script with passed in arg could be use when we want to automate the process (e.g: using default templates).
\s The option with user input could be use when we want to override things.
ANSWER

puts
puts "2. Try open the ifle in IRB"
puts <<ANSWER
\s NOTE: File.open() "doesn\'t" take a a typed in file name as arg. use a variable
\s example:
\s filename = some_file_name
\s File.open(filename)
ANSWER

puts
puts "3. Remember to use close()"