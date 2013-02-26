name = 'Minh Ha'
age = 26
height = 179 # cm
weight = 70 # kg
eyes = 'Brown'
teeth = 'White'
hair = 'Black'

puts "Let's talk about %s." % name
puts "He's %d cm tall." % height
puts "He weight %d kg." % weight
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

puts "If I add %d, %d, and %d I get %d." % [
      age, height, weight, age + height + weight]
      # 26, 179, 70 | should be: 275

puts 'Extra Credit'
puts '1. Remove my_ in front of variables name'