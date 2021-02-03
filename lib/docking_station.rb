# in lib/docking_station.rb
class DockingStation
  DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end
  def release_bike
    empty?
    @bikes.pop
  end
  def dock(bike)
    full?
    @bikes << bike
  end

  attr_reader :bike
  private
  def full?
    fail "Docking station full" if @bikes.size >= DEFAULT_CAPACITY
  end
  def empty?
    fail "No bikes available" if @bikes.empty?
  end
end

class Bike
  def working?
    true
  end
end
