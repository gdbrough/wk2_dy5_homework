require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Graeme", 49, 100)
    @guest2 = Guest.new("Anne", 58, 10)
    @guest3 = Guest.new("Russ", 53, 15)
    @guest4 = Guest.new("Vincent", 30, 40)
    @guest5 = Guest.new("Billy", 17, 45)
  end

  def test_name_returned()
    assert_equal("Graeme", @guest1.name)
  end

  def test_age_returned()
    assert_equal(17, @guest5.age)
  end

  def test_returns_monies
    # @guest2.available_monies()
    assert_equal(10, @guest2.available_monies())
  end

end
