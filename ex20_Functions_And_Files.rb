input_file = ARGV[0]

def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
  puts "#{line_count}: #{f.readline}"
end

current_file = File.open(input_file)

puts "Lets print the whole file:\n\n"
print_all(current_file)

puts "\n"
puts "Lets rewind the file like a tape"
rewind(current_file)

puts "Lets print three line:\n\n"
for i in 1..3
  current_line = i
  print_a_line(current_line, current_file)
  puts
end