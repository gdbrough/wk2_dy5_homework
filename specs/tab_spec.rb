require("minitest/autorun")
require("minitest/rg")

require_relative("../tab.rb")
require_relative("../guest.rb")
require_relative("../room.rb")

class TabTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Graeme", 49, 100, "Highway to Hell")
    @guest2 = Guest.new("Anne", 58, 10, "Sweet Child of Mine")
    @guest3 = Guest.new("Russ", 53, 15, "Freebird")
    @guest4 = Guest.new("Vincent", 30, 40, "It's all About Love")
    @guest5 = Guest.new("Billy", 17, 45, "Happy")

    @room1 = Room.new("Rock Room", "rock", 10, 20)
    @room2 = Room.new("Ballad Room", "ballad", 5, 15)
    @room3 = Room.new("Pop Room", "pop", 3, 10)

    @tab = Tab.new(
      ["Graeme", "Russ", "Billy", "Teeny"],
      ["Room 1 Entry Fee", "Room 2 Entry Fee", "Room 3 Entry Fee", "Room 2 Entry Fee"],
      [10, 5, 3, 5])
  end

  def test_guest_name_can_be_returned_from_tab
    result = @tab.get_name_from_tab_for("Graeme")
    assert_equal("Graeme", result)
  end

  def test_item_can_be_returned_from_tab
    result = @tab.get_item_from_tab_for("Billy")
    assert_equal("Room 3 Entry Fee", result)
  end

  def test_amount_can_be_returned_from_tab
    result = @tab.get_amount_from_tab_for("Teeny")
    assert_equal(5, result)
  end

end
