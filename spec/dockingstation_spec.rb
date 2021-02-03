require 'docking_station'

describe 'DockingStationTest' do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  it 'responds to release_bike' do
    expect(docking_station).to respond_to(:release_bike)
  end
  it 'get the bike and check if bike is working' do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end
  it 'docking the bike at the docking station' do
    expect(docking_station).to respond_to(:dock)
  end
  it 'the bike is stored at the docking station' do
    expect(docking_station.dock(bike)).to eq(bike)
  end
end
