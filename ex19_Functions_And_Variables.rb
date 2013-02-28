def cheese_n_crackers(cheese_count, boxes_of_crackers)
  puts "We have this many cheese: #{cheese_count}"
  puts "We have this many boxes of crackers: #{boxes_of_crackers}"
  puts "Yum. I have enough stash for this winter"
  puts "Get a blanket!\n\n"
end

puts "We can give args to the function directly:"
cheese_n_crackers(20, 30)

puts "OR we can use variables:"
cheese_num = 30
crackers_num = 20
cheese_n_crackers(cheese_num, crackers_num)

puts "We can do some math:"
cheese_n_crackers(10 + 15, 20 + 15)

puts "We can even combine variables n' math:"
cheese_n_crackers(cheese_num + 15, crackers_num + 15)