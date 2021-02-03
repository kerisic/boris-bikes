# in lib/docking_station.rb

class DockingStation
  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end
  def dock(bike)
    @bike = bike
  end
  attr_reader :bike
end

class Bike
  def working?
    true
  end
end
