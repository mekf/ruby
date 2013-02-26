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

puts '2. Trying more sequences'
puts "Height: Hexadeciaml of %d would be %X." % [height, height]
puts "Weight: Binary of %d would be %B." % [weight, weight]

puts '3. More Format Sequences'
puts 'http://www.ruby-doc.org/core-2.0/Kernel.html'

puts '4. Convert cm, kg to inches and lbs'
puts "height_inches = height / 2.54"
height_inches = height / 2.54
puts "His height in inches: %d" % height_inches

puts "weight_lbs = weight * 2.2046"
weight_lbs = weight * 2.2046
puts "His weight in lbs: %d" % weight_lbs