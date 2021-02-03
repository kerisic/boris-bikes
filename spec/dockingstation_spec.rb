require 'docking_station'

describe 'DockingStationTest' do
  docking_station = DockingStation.new
  bike = Bike.new
  it 'responds to release_bike' do
    expect(docking_station).to respond_to(:release_bike)
  end
  it 'get the bike and check if bike is working' do
    expect(bike).to be_working
  end
  it 'docking the bike at the docking station' do
    expect(docking_station).to respond_to(:dock)
  end
  it 'the bike is stored at the docking station' do
    expect(docking_station.dock(bike)).to eq([bike])
  end

  describe "calling empty docking station" do
    subject = DockingStation.new
    bike = Bike.new
    it "release bike" do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
    it "dock bike" do
      20.times {subject.dock(bike)}
      expect { subject.dock(bike) }.to raise_error("Docking station full")
    end
  end
end
