puts "Chickens counting:"

puts "Hens", 25 + 30 / 6
puts "Roosters", 100 - 25 * 3  % 4
# 100 - 75 module 4 (75/4 = 18 +3)

puts "Eggs counting:"
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
# 5 modulo 2 (5/2 = 2 + 1) - 0 + 6
# the Math seem wrong cuz 1 / 4 cannot be represented in integer

puts "Is it true that 3 + 2 < 5 - 7?"
puts 3 + 2 < 5 - 7

puts "What is 3 + 2?", 3 + 2
puts "What is 5 - 7?", 5 - 7

puts "Is it greater?", 5 > -2 #true
puts "Is it greater or equal?", 5 >= -2  #true
puts "Is it less or equal?", 5 <= -2 #false

puts "Extra Credit"
puts "1. commenting code"
puts "2. Use IRB"
puts "3. Extra calculation" #TODO
puts "4. Research about floating point"
puts "5. Rewrite with correct math"
puts 3 + 2 + 1 -5 + 4 % 2 - 0.25 + 6 #TODO not good enough