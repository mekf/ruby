require 'test/unit'
require '../lib/ex47'

class MyUnitTests < Test::Unit::TestCase

  def setup
    puts "setup!"
  end

  def teardown
    puts "teardown!"
  end

  def test_basic
    puts "I RAN!"
  end
  
end