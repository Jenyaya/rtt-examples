# Old style
class Car
  def velocity
    @velocity
  end

  def velocity=(new_velocity)
    @velocity = new_velocity
  end
end

car = Car.new
car.velocity=100
car.velocity

# Simple form

class Car
  attr_reader :velocity
  attr_writer :velocity
end

# Or

class Car
  attr_accessor :velocity
end
