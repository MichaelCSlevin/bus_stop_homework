class Bus

  def initialize(number, terminus)
    @number = number
    @terminus = terminus
    @passengers = []
  end

  def number()
    return @number
  end

  def terminus()
    return @terminus
  end

  def drive()
    return "Vroom vroom, I'm a bus!"
  end

  def count_passengers()
    return @passengers.count()
  end

  def collect(passengers)
    @passengers << passengers
  end

end
