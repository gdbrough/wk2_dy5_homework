class Room

  attr_reader :name, :genre, :capacity, :entry_fee

  def initialize(name, genre, capacity, entry_fee)
    @name = name
    @genre = genre
    @capacity = capacity
    @entry_fee = entry_fee
    @guests = []
    @songs = []
  end

  def room_capacity()
    return @capacity
  end

  def total_guests_in_room()
    return @guests.length()
  end

  def room_entry_fee()
    return @entry_fee
  end

  def guest_has_sufficient_monies(guest_name)
    return true if guest_name.available_monies >= room_entry_fee()
    return false
  end

  def check_in_to_room(guest)
    @guests << guest if (total_guests_in_room() < room_capacity()) && guest_has_sufficient_monies(guest)
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
