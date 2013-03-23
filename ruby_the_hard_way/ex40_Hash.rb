puts "Exercies 40: Dictionary"

# define a cities hash
# write a method 'find_city(map, state)'
# cities[:find] = method(:find_city)
# write a loop to ask for abbrevation => return state, break if empty
# puts cities[:find].call(cities, state)

cities = { 'CA' => 'San Francisco', 
  'MI' => 'Detroit', 
  'FL' => 'Jacksonville' }

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

def find_city(map, state)
  if map.include? state
    return map[state]
  else
    return "Not found."
  end
end

cities[:find] = method(:find_city)

while true
  print "State? (ENTER to quit) > "
  state = gets.chomp

  break if state.empty?
  puts cities[:find].call(cities, state)  
  # puts city = find_city(cities, state)
end