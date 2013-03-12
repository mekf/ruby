puts 'Exercise 17: More Files'
puts

from_file, to_file = ARGV
script = $0

puts "Coyping from #{from_file} to #{to_file}"

input = File.open(from_file); input_data = input.read

puts "The input file is #{input_data.length} bytes long"

puts "Does the output file exist? #{File.exist? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(input_data)

puts "Yosh, All done!"

output.close
input.close

puts
puts "Extra Credit"
puts "3. Make the script one line long"

puts <<BLOCK
\sThis still leave the connection open though:
\sFile.open(to_file, 'w').write(File.open(from_file).read)

\sI might just use this:
\soutput = File.open(to_file, 'w'); output.write(File.open(from_file).read); output.close
BLOCK

puts "\n4. Why do I need to do output.close?"
puts "\s Leaving too many connections open could lead to memory leak"