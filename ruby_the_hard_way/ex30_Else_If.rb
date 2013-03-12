puts "Exercise 30: Else And If"

people = 30
cars = 40
buses = 15

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We shouldn't take the cars."
else
  puts "We can't decide."
end

if buses > cars
  puts "that's good. public transport is adequate."
elsif buses < cars
  puts "traffic jam!!! buy some more buses."
else
  puts "well, we cannot decide."
end

if people > buses
  puts "Aye! Let's take the buses."
else
  puts "Fine, let's stay home then."
end