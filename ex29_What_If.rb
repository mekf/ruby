puts "Exercise 29: What If"

people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The cats will start watching cute human vids now!"
end

if people > cats
  puts "Not many cats! Human would still be watching cats vids then!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs!?"
end

if people <= dogs
  puts "People are less than or equal to dogs!?"
end

if people == dogs
  puts "People are dogs???"
end

puts "\nExtra Credit"
puts "2. Other boolean expressions from Ex. 27:"

if people != cats && people != dogs && dogs != cats
  puts "none are equal"
end

if people != cats && !(people != dogs)
  puts "seems like dogs are on equal footing with human!?"
end