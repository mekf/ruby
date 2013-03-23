require './ex42_texts'

puts "Exercise 42: Gorthons Are Getting Classy"

class Game
  def initialize(start)
    @start = start
    puts "in init @start = " + @start.inspect
  end

  def prompt
    print "> "
  end

  def death
    @quips = Ex42Text.quips
    puts @quips[rand(@quips.length)]
    # puts quips.sample(1)
    Process.exit(1)
  end

  def play
    puts "@start => " + @start.inspect
    next_room = @start
    
    while true
      puts "\n--------"
      room = method(next_room)
      next_room = room.call
    end
  end

  def central_corridor
    @central_corridor_text = Ex42Text.central_corridor_text
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
    @laser_weapon_armory_text = Ex42Text.laser_weapon_armory_text
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
    @the_bridge_text = Ex42Text.the_bridge_text
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
    @escape_pod_text = Ex42Text.escape_pod_text
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
end

a = Game.new(:central_corridor)
a.play