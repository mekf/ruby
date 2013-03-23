require 'test/unit'
require_relative '../lib/ex47'

class MyUnitTests < Test::Unit::TestCase

  def test_room
    gold = Room.new("GoldRoom",
      """This room has gold in it you can grap.
      There's a door to the north.""")
    assert_equal(gold.name, "GoldRoom")
    assert_equal(gold.paths, {})
  end
end