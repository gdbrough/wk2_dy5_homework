require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Graeme", 49)
    @guest2 = Guest.new("Anne", 58)
    @guest3 = Guest.new("Russ", 53)
    @guest4 = Guest.new("Vincent", 30)
    @guest5 = Guest.new("Billy", 17)
  end

  def test_name_returned()
    assert_equal("Graeme", @guest1.name)
  end

  def test_age_returned
    assert_equal(17, @guest5.age)
  end

end
