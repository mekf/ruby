require './ex41_texts'

puts "Exercise 41: Gorthons From Planet Percal #25"

def prompt
  print "> "
end

def death
  quips = ["You died. You kinda suck at this.",
    "Nice job, you died ...jackass.",
    "Such a luser.",
    "I have a small puppy that's better at this."]
  puts quips[rand(quips.length)]
  # puts quips.sample(1)
  Process.exit(1)
end

def central_corridor
  puts @central_corridor_text[:start]
  prompt; action = gets.chomp

  if action == "shoot!"
    puts @central_corridor_text[:shoot_die]
    return :death
  elsif action == "dodge!"
    puts @central_corridor_text[:dodge_die]
    return :death
  elsif action == "tell a joke"
    puts @central_corridor_text[:joke_go]
    return :laser_weapon_armory
  else
    puts @central_corridor_text[:stuck]
    return :central_corridor
  end
end

def laser_weapon_armory
  puts @laser_weapon_armory_text[:keypad_start]
  code = "%s%s%s" % [rand(9) + 1, rand(9) + 1, rand(9) + 1]
  puts "cheat: #{code}"

  print "[keypad]> "; guess = gets.chomp
  guesses = 0

  while guess != code and guesses < 10
    puts "BZZZZZZED!"
    guesses += 1
    print "[keypad]> "; guess = gets.chomp
  end

  if guess == code
    puts @laser_weapon_armory_text[:correct_code]
    return :the_bridge
  else
    puts @laser_weapon_armory_text[:time_out]
    return :death
  end
end

def the_bridge
  puts @the_bridge_text[:bridge_start]
  prompt; action = gets.chomp
  
  if action == "throw the bomb"
    puts @the_bridge_text[:throw_bomb_die]
    return :death
  elsif action == "slowly place the bomb"
    puts @the_bridge_text[:place_bomb_die]
    return :escape_pod
  else
    puts @the_bridge_text[:stuck]
    return :the_bridge
  end
end

def escape_pod
  puts @escape_pod_text[:pod_start]
  good_pod = rand(5) + 1
  puts "cheat: #{good_pod}"
  print "[pod]> "; guess = gets.chomp

  if guess.to_i != good_pod
    puts "You jump into pod %s and hit the eject button." % guess
    puts @escape_pod_text[:bad_pod_die]
    return :death
  else
    puts "You jump into pod %s and hit the eject button." % guess
    puts @escape_pod_text[:good_pod_win]
    Process.exit(0)
  end
end

ROOMS = {
  death: method(:death),
  central_corridor: method(:central_corridor),
  laser_weapon_armory: method(:laser_weapon_armory),
  the_bridge: method(:the_bridge),
  escape_pod: method(:escape_pod)
}

def runner(map, start)
  next_one = start
  while true
    room = map[next_one]
    puts "\n--------"
    next_one = room.call
  end
end

runner(ROOMS, :central_corridor)