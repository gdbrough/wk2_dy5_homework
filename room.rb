class Room

  attr_reader :name, :genre, :capacity

  def initialize(name, genre, capcity)
    @name = name
    @genre = genre
    @capcity = capacity
    @guests = []
    @songs = []
  end

  def total_guests_in_room()
    return @guests.length()
  end

  def check_in_to_room(guest_name)
    @guests << guest_name
  end

  def check_out_of_room(guest_name)
    @guests.delete(guest_name) if @guests.include?(guest_name)
  end

  def total_songs_in_room()
    return @songs.length()
  end

  def add_song_to_room(song)
    @songs << song
  end

  def remove_song_from_room(song)
    @songs.delete(song) if @songs.include?(song)
  end

end
