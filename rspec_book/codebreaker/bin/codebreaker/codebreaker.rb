#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../../lib', __FILE__)
require 'codebreaker'

def generate_secret_code
  code = []
  4.times { code.push(rand(1..9)) }
  code = code.join
end

game = Codebreaker::Game.new(STDOUT)
secret_code = generate_secret_code
at_exit { puts "secret_code: #{secret_code}" }

game.start(secret_code)
while guess = gets.chomp
  game.guess(guess)
end