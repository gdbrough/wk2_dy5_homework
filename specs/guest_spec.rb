require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Graeme", 49)
    @guest2 = ["Anne", 58]
    @guest3 = ["Russ", 53]
    @guest4 = ["Vincent", 30]
    @guest5 = ["Billy", 17]
  end

  def test_name_returned()
    assert_equal("Graeme", @guest1.name)
  end

end
