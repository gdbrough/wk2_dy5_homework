class Room

  attr_reader :name, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    @guests = []
  end

  def total_guests_in_room()
    return @guests.length()
  end

  def check_in_to_room(guest_name)
    @guests << guest_name
  end

end
