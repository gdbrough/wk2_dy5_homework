class Guest

  attr_reader :name, :age, :monies
  attr_writer :monies

  def initialize(name, age, monies)
    @name = name
    @age = age
    @monies = monies
  end

  def available_monies()
    return @monies
  end

end
