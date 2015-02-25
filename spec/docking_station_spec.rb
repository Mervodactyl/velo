require 'docking_station'

describe DockingStation do

  let(:bike)    { Bike.new }
  let(:station) { DockingStation.new(capacity: 20) }

  it "is able to accept a Bike" do
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

  it "knows when it is full" do
    expect(station).not_to be_full
    20.times { station.dock(bike) }
    expect(station).to be_full
  end
end









