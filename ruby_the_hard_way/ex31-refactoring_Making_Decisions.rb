puts "Exercise 31: Making Decisions"

class Game
  class << self
    def prompt
      print "> "
    end

    def door_1_options
      puts "There's a giant bear eating a cheese cake. What do you do?"
      puts "1. Take the take."
      puts "2. Scream at the bear."
      meet_bear
    end

    def door_2_options
      puts "You stare into the endless abyss at Cthulu's retina."
      puts "1. Blueberies."
      puts "2. Yellow jacket clothespins."
      puts "3. Understanding revolvers yelling melodies."
      abyss_of_cthulu
    end

    def no_door
      puts "You stumble around and fall on a knife and die. Nice"
    end

    def meet_bear
      prompt; bear = gets.chomp
      if bear == "1"
        puts "The bear eats your face off. Good job."
      elsif bear == "2"
        puts "The bear eats your legs off. Good job."
      else
        puts "Well, doing #{bear} is probably better. Bear runs away."
      end
    end

    def abyss_of_cthulu
      prompt; insanity = gets.chomp
      if insanity == "1" or insanity == "2"
        puts "Your body survivies powered by a mind of jello. Good job!"
      else
        puts "The insanity rots your eyes into a pool of muck. Good job!"
      end
    end
  end
end

# Game begins
puts "You entered a dark room with two doors. Do you go through door #1 or door #2?"
Game.prompt; door = gets.chomp

if door == "1"
  Game.door_1_options # meet bear
elsif door == "2"
  Game.door_2_options # abyss of Cthulu
else
  Game.no_door
end