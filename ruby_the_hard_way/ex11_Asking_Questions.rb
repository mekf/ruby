puts "Exercise 11: Asking Questions"

print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp
print "How much do you weight? "
weight = gets.chomp

puts "So, you're #{age} years old, #{height} cm tall, and #{weight} kg heavy."

puts

puts 'Extra Credit'
puts '1. gets n\' chomp'
puts 'gets: gather data from input. By default, it will append a trailing new line after the prompt'
puts 'chomp(): it\'s a string method that will strip the new line \\n resulted from the gets method'
puts <<EXAMPLE
\s\s example:
\s\s ruby-1.9.3-p392 :001 > a = gets
\s\s we
\s\s\s => "we\\n"
\s\s ruby-1.9.3-p392 :002 > a = gets.chomp
\s\s we
\s\s\s => "we"
EXAMPLE

puts

puts '2. Other way to use gets.chomp'
puts 'use chomp on a variable'
puts <<EXAMPLE
\s\s example:
\s\s 1.9.3p392 :001 > a = gets
\s\s we
\s\s\s => "we\\n" 
\s\s 1.9.3p392 :002 > print "how are \#{a} today"
\s\s how are we
\s\s\s today => nil 
\s\s 1.9.3p392 :003 > a.chomp
\s\s\s => "we" 
\s\s 1.9.3p392 :004 > print "how are \#{a} today"
\s\s how are we
\s\s\s today => nil 
\s\s 1.9.3p392 :005 > a.chomp!
\s\s\s => "we" 
\s\s 1.9.3p392 :006 > print "how are \#{a} today"
\s\s how are we today => nil 
\s\s 1.9.3p392 :007 > a = gets
\s\s we
\s\s\s => "we\\n" 
\s\s 1.9.3p392 :008 > print "how are \#{a.chomp} today"
\s\s how are we today => nil 
EXAMPLE

puts

puts '3. Write another form'
print 'What\'s your name btw? '
name = gets.chomp
puts "Hey! #{name}. How are you today"