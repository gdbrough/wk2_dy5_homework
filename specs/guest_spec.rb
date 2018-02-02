require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Graeme", 49, 100, "Highway to Hell")
    @guest2 = Guest.new("Anne", 58, 10, "Sweet Child of Mine")
    @guest3 = Guest.new("Russ", 53, 15, "Freebird")
    @guest4 = Guest.new("Vincent", 30, 40, "It's all About Love")
    @guest5 = Guest.new("Billy", 17, 45, "Happy")

    @room1 = Room.new("Rock Room", "rock", 10, 20)
    @room2 = Room.new("Ballad Room", "ballad", 5, 15)
    @room3 = Room.new("Pop Room", "pop", 3, 10)

    @song1 = Song.new("Highway to Hell", "AC/DC", "rock")
    @song2 = Song.new("Sweet Child of Mine", "Guns n Roses", "rock")
    @song3 = Song.new("Freebird", "Lynyrd Skynyrd", "rock")
    @song4 = Song.new("It's all About Love", "Peter and the Testtube Babies", "ballad")
    @song5 = Song.new("Happy", "Pharrell", "pop")
  end

  def test_name_returned()
    assert_equal("Graeme", @guest1.name)
  end

  def test_age_returned()
    assert_equal(17, @guest5.age)
  end

  def test_returns_monies
    assert_equal(10, @guest2.available_monies())
  end

  def test_returns_favourite_track()
    assert_equal("Freebird", @guest3.favourite_track())
  end

  def test_woohoo_when_fav_track_is_on_playlist_in_room()
    @room2.check_in_to_room(@guest4)
    @room2.add_song_to_room(@song4)
    assert_equal("woohoo", @guest4.woohoo(@room2))
  end

end
