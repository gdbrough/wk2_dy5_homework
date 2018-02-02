require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Rock Room", "rock")
    @room2 = Room.new("Ballad Room", "ballad")
    @room3 = Room.new("Pop Room", "pop")
  end

  def test_returns_room_name
    assert_equal("Rock Room", @room1.name)
  end

  def test_returns_genre
    assert_equal("pop", @room3.genre)
  end

end
