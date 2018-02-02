require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
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

  def test_returns_room_name()
    assert_equal("Rock Room", @room1.name)
  end

  def test_returns_genre()
    assert_equal("pop", @room3.genre)
  end

  def test_returns_room_capacity()
    assert_equal(3, @room3.room_capacity())
  end

  def test_check_number_of_guests_in_room()
    assert_equal(0, @room1.total_guests_in_room())
  end

  def test_returns_room_entry_fee()
    assert_equal(15, @room2.room_entry_fee())
  end

  def test_guest_can_check_in_to_room()
    @room1.check_in_to_room(@guest1)
    assert_equal(1, @room1.total_guests_in_room())
  end

  def test_guest_cannot_check_in_to_room_if_insufficient_funds()
    @room1.check_in_to_room(@guest1)
    @room1.check_in_to_room(@guest3)
    assert_equal(1, @room1.total_guests_in_room())
  end

  def test_guest_cannot_check_in_to_room_if_at_capacity()
    @room3.check_in_to_room(@guest1)
    assert_equal(1, @room3.total_guests_in_room())
    @room3.check_in_to_room(@guest2)
    assert_equal(2, @room3.total_guests_in_room())
    @room3.check_in_to_room(@guest3)
    assert_equal(3, @room3.total_guests_in_room())
    @room3.check_in_to_room(@guest4)
    assert_equal(3, @room3.total_guests_in_room())
    @room3.check_in_to_room(@guest5)
    assert_equal(3, @room3.total_guests_in_room())
  end

  def test_guest_can_check_out_of_room__guest_in_room()
    @room1.check_in_to_room(@guest1)
    @room1.check_out_of_room(@guest1)
    assert_equal(0, @room1.total_guests_in_room())
  end

  def test_guest_can_check_out_of_room__guest_not_in_room()
    @room1.check_in_to_room(@guest1)
    @room1.check_out_of_room(@guest2)
    assert_equal(1, @room1.total_guests_in_room())
  end

  def test_number_of_songs_in_room_is_returned()
    assert_equal(0, @room2.total_songs_in_room)
  end

  def test_add_song_to_room()
    @room2.add_song_to_room(@song4)
    assert_equal(1, @room2.total_songs_in_room)
  end

  def test_remove_song_from_room__song_in_room()
    @room2.add_song_to_room(@song4)
    @room2.remove_song_from_room(@song4)
    assert_equal(0, @room2.total_songs_in_room)
  end

  def test_remove_song_from_room__song_not_in_room()
    @room2.add_song_to_room(@song4)
    @room2.remove_song_from_room(@song3)
    assert_equal(1, @room2.total_songs_in_room)
  end

  def test_guest_has_sufficient_monies_for_entry_fee__has_enough()
    result = @room1.guest_has_sufficient_monies(@guest1)
    assert_equal(true, result)
  end

  def test_guest_has_sufficient_monies_for_entry_fee__not_enough()
    result = @room1.guest_has_sufficient_monies(@guest3)
    assert_equal(false, result)
  end

  def test_entry_fee_can_be_deduced__succesful_entry()
    @room1.deduct_entry_fee(@guest1)
    assert_equal(80, @guest1.monies)
  end

end
