require("minitest/autorun")
require("minitest/rg")

require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Highway to Hell", "AC/DC", "rock")
    @song2 = Song.new("Sweet Child of Mine", "Guns n Roses", "rock")
    @song3 = Song.new("Freebird", "Lynyrd Skynyrd", "rock")
    @song4 = Song.new("It's all About Love", "Peter and the Testtube Babies", "ballad")
    @song5 = Song.new("Happy", "Pharrell", "pop")
  end

  def test_song_title_returned()
    assert_equal("Freebird", @song3.title)
  end

  def test_song_artist_returned()
    assert_equal("Pharrell", @song5.artist)
  end

  def test_song_genre_returned()
    assert_equal("ballad", @song4.genre)
  end

end
