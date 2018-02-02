class Room

  attr_reader :name, :genre, :capacity

  def initialize(name, genre, capacity)
    @name = name
    @genre = genre
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def room_capacity()
    return @capacity
  end

  def total_guests_in_room()
    return @guests.length()
  end

  def check_in_to_room(guest_name)
    @guests << guest_name if total_guests_in_room < room_capacity
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
