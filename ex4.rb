#assign 100 to cars var
cars = 100

#assign 4 to space available within a car
space_in_a_car = 4.0

#assign the number of drivers: 30
drivers = 30

#assign the number of passengers
passengers = 90

#empty car would equal the # of cars - # of drivers
cars_not_driven = cars - drivers

#assumsing the passengers are not interested in driving car
cars_driven = drivers

#carpool capacity would be the total of seats available (including drivers)
carpool_capacity = cars_driven * space_in_a_car

#only the # of passengers is used in this calculation
average_passengers_per_car = passengers / cars_driven

puts "cars available: #{cars}." #should be 100
puts "drivers available: #{drivers}" #should be 30
puts "empty car: #{cars_not_driven}" #should be 70
puts "max transport: #{carpool_capacity} people" #should be 120
puts "passengers in carpool: #{passengers} passengers" #should be 90
puts "need to put #{average_passengers_per_car} in each car" #should be 3

puts "Extra Credit"
puts "1. Why 4.0?"
puts "not neccessarily important, unless there're cars with seat design for the Gnomes"
puts "2. Research floating point"
puts "3. Commenting"
puts "4. Using IRB"