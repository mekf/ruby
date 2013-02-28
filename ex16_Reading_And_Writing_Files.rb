puts 'Exercise 16: Reading And Writing Files'

# REMINDER
# close -- Closes the file. Like File->Save.. in the editor.
# read -- Reads the content of the file. The result can be assign to a variable.
# readline -- Reads just one line of the file.
# truncate -- Empties the file, WATCH OUT!!!
# write(stuff) -- Writes stuff to the file.

# get the file name and the script name
filename = ARGV.first
script = "$0"

# open the file, read it, print it, then close the connection
puts
puts "===================================="
puts "YOUR FILE:"
target_read = File.open(filename)
puts target_read.read
target_read.close
puts "===================================="
puts

# promt to ask whether we want to clear the file or not
puts "We're going to erase the content of #{filename}!"
puts "If you DON'T want that, hit CTRL-C. (^C)"
puts "If you DO want that, hit RETURN."

# CTRL-C or RETURN
print "? "
STDIN.gets

# Open the file as writable
puts "Openning the file..."
target = File.open(filename, 'w')

# Truncate the file
puts "Truncating the file. Yohoho"
target.truncate(target.size)

# Get user input for 3 new lines
puts "Now I'm going to ask for three lines (which I will write back to the file)"
puts "line 1: "; line1 = STDIN.gets.chomp
puts "line 2: "; line2 = STDIN.gets.chomp
puts "line 3: "; line3 = STDIN.gets.chomp

puts "Now I'm going to write stuffs to your file"
lines = [line1, line2, line3]
lines.each do |line|
  target.write(line)
  target.write("\n")
end
puts
puts "Writing finished, closing file ..."
target.close

# Print the new file
puts
puts "===================================="
puts "YOUR FILE:"
target_read = File.open(filename)
puts target_read.read
target_read.close
puts "===================================="

puts
puts "Extra Credit"
puts "5. if the file is open with 'w', is target.truncate necessary?"
puts "\sNO. 'w' do that by default. It should only be needed if the file is open with 'a' (work from end of exisiting file if exist)"
puts "\sRuby IO modes"
puts "\shttp://ruby-doc.org/core-2.0/IO.html"