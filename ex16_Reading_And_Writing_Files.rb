puts 'Exercise 16: Reading And Writing Files'

# REMINDER
# close -- Closes the file. Like File->Save.. in the editor.
# read -- Reads the content of the file. The result can be assign to a variable.
# readline -- Reads just one line of the file.
# truncate -- Empties the file, WATCH OUT!!!
# write(stuff) -- Writes stuff to the file.

filename = ARGV.first
script = "$0"

puts
puts "===================================="
puts "YOUR FILE:"
target_read = File.open(filename)
puts target_read.read
target_read.close
puts "===================================="
puts

puts "We're going to erase the content of #{filename}!"
puts "If you DON'T want that, hit CTRL-C. (^C)"
puts "If you DO want that, hit RETURN."

print "? "
STDIN.gets

puts "Openning the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Yohoho"
target.truncate(target.size)

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
puts "===================================="
puts "YOUR FILE:"
puts target.read
puts "===================================="

puts
puts "Closing the File, Bye Bye"
target.close