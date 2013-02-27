# Exercise 10: What Was That?
puts "Exercise 10: What Was That?"

puts

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

puts

puts 'Extra Credit'
puts '1. Find more escape sequences'
puts 'http://en.wikibooks.org/wiki/Ruby_Programming/Strings'
common_sequences = <<COMMON_LIST
  \\\" - double quote
  \\\\ - single backslash
  \\a - bell/alert
  \\b - backspace
  \\r - carriage return
  \\n - newline
  \\s - space
  \\t - tab
COMMON_LIST
puts common_sequences

puts

puts '2. Make a complex format'
katze = "\aHallo!! \n\tIch bin und wird immer einer %s" % "katze"
puts katze