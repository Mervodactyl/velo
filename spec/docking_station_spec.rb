require 'docking_station'

describe DockingStation do

  let(:bike)    { Bike.new }
  let(:station) { DockingStation.new }

  it "should be able to accept a Bike" do
    expect(station.bike_count).to eq(0)
    station.dock(bike)
    expect(station.bike_count).to eq(1)
  end

  it "can release a Bike" do
    station.dock(bike)
    expect(station.bike_count).to eq(1)
    station.release_bike(bike)
    expect(station.bike_count).to eq(0)
  end
end