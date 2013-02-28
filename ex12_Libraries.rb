puts 'Exercise 12: Libraries'

# http://www.ruby-doc.org/stdlib-1.9.3/libdoc/open-uri/rdoc/OpenURI.html
# open-uri is the wrapper for net/http, net/https, and net/ftp
require 'open-uri'

# get the content of http://ruby-lang.org/en
# print each line of the document
# print the base_uri
# print the content_type
# print charset
# print content_encoding
# print last_modified

# sometimes, not all of the required info is filled in.
# e.g: at the time writing this, charset and last_modified is unavailable

open("http://ruby-lang.org/en") do |f|
  f.each_line { |line| p line }
  puts f.base_uri           # <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/end>
  puts f.content_type       # "text/html"
  puts f.charset            # "iso-8859-1"
  puts f.content_encoding   # []
  puts f.last_modified      # []
end

puts
puts 'Extra Credit'
puts '1. Research require and include'
puts 'http://stackoverflow.com/questions/318144/what-is-the-difference-between-include-and-require-in-ruby'
puts <<ANSWER
require: run another file 
\s => require is file level
include: load all of the methods from another module and append those to the current module
\s => include is language-level
ANSWER

puts
puts '2. Can you require a script that doesn\'t contain a library specificially'
puts 'My gut feeling says no. I\'m not sure at this stage'

puts
puts '3. Directories where Ruby would look for libraries'
puts 'Type this "$ ruby -e \'puts $:\'" into the terminal (without the double quotes)'
puts <<PATH
\s~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1
\s~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby/1.9.1/x86_64-linux
\s~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/site_ruby
\s~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1
\s~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby/1.9.1/x86_64-linux
\s~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/vendor_ruby
\s~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1
\s~/.rvm/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/x86_64-linux
PATH