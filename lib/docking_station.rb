# in lib/docking_station.rb

class DockingStation
  def initialize
    @bikes = []
  end
  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end
  def dock(bike)
    fail "Docking station full" if @bikes.size == 20
    @bikes << bike
  end
  attr_reader :bike
end

class Bike
  def working?
    true
  end
end
