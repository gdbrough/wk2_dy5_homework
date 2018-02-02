class Guest

  attr_reader :name, :age, :monies, :fav_track
  attr_writer :monies

  def initialize(name, age, monies, fav_track)
    @name = name
    @age = age
    @monies = monies
    @fav_track = fav_track
  end

  def available_monies()
    return @monies
  end

  def favourite_track()
    return @fav_track
  end

  def woohoo(room)
    return "woohoo" if room.songs.to_s.include?(@fav_track)
  end

end
