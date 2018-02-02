require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../guest.rb")

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Graeme", 49)
    @guest2 = Guest.new("Anne", 58)
    @guest3 = Guest.new("Russ", 53)
    @guest4 = Guest.new("Vincent", 30)
    @guest5 = Guest.new("Billy", 17)

    @room1 = Room.new("Rock Room", "rock")
    @room2 = Room.new("Ballad Room", "ballad")
    @room3 = Room.new("Pop Room", "pop")
  end

  def test_returns_room_name()
    assert_equal("Rock Room", @room1.name)
  end

  def test_returns_genre()
    assert_equal("pop", @room3.genre)
  end

  def test_check_number_of_guests_in_room()
    # Room.total_guests_in_room("Rock Room")
    assert_equal(0, @room1.total_guests_in_room())
  end

  def test_guest_can_check_in_to_room()
    @room1.check_in_to_room(@guest1)
    assert_equal(1, @room1.total_guests_in_room())
  end

end
