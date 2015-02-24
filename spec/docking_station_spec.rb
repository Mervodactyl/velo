require 'docking_station'

describe Docking_station do
  it "should be able to accept a Bike" do
    bike = Bike.new
    station = Docking_station.new
    expect(station.bike_count).to eq(0)
    station.dock(bike)
    expect(station.bike_count).to eq(1)
  end

end