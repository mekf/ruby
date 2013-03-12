# this one is like your scripts with argv
def puts_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# that *args is a bit pointless though. can can just do this
def puts_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def puts_one(arg)
  puts "arg: #{arg}"
end

def puts_none
  puts "I got nothin."
end

puts_two("Minh", "Ha")
puts_two_again("Minh", "Ha")
puts_one("Only!")
puts_none