puts "Exercise 39: Doing Things To Array"

# TODO
# define a string that says ten_things, but having less than 10 things
# print a sentence: fix that
# split the ten_things into an array called 'stuffs'
# define an array 'more_stuffs' by using word to array
# write a loop, if stuff != pop next_one from more_stuffs, print add 1 to stuff. print stuff length
# print stuff

# puts stuff[1]
# puts stuff[-1] # whoa! fancy
# puts stuff.pop()
# puts stuff.join(' ') # what? cool!
# puts stuff.values_at(3,5).join('#') # super stellar!

puts
ten_thinkpads = "T60p T61 T410s T430s"

puts ten_thinkpads
puts "But it's not 10 though, let's fix that."

thinkpads = ten_thinkpads.split(' ')
more_thinkpads = %w(T42 T43 T400 T500 T410 T510 T420 T520 T430 T530)

while thinkpads.length != 10
  next_one = more_thinkpads.pop
  puts "Adding #{next_one} to thinkpads."
  thinkpads.push(next_one)
  puts "There're #{thinkpads.length} item now."
end

puts "#{thinkpads}"

puts "Try something:"
puts thinkpads[1]
puts thinkpads[-1] # start from the end of the array
puts thinkpads.join(' ')
puts thinkpads.values_at(3,5).join('#')
puts thinkpads.pop # this will return the last element of the array, passing in an integer would return the last elements.