#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)
require 'codebreaker'

def generate_secret_code
  options = (1..9).to_a
  (0..3).map { options.delete_at(rand(options.length)) }.join
end

secret_code = generate_secret_code
game = Codebreaker::Game.new(STDOUT)
game.start(secret_code)
at_exit { puts "secret_code: #{secret_code}" }

while guess = gets.chomp
  game.guess(guess)
  exit if guess == secret_code
end