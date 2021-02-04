# in lib/docking_station.rb
class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if @bikes.size >= DEFAULT_CAPACITY
    @bikes << bike
  end

  attr_reader :bike

  private
  def full?
    @bikes.size >= 20
  end

  def empty?
    @bikes.empty?
  end

end

class Bike
  def working?
    true
  end
end
