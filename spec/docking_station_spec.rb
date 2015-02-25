require 'docking_station'

describe DockingStation do

  def fill_station(station) ## helper methods? 'code' written in the test file for readability and ease of use? in the same way we would use doubles?
    20.times { station.dock(bike) }  ## what is this? a hash? why is it written this way?
  end

  let(:bike)    { Bike.new }
  let(:station) { DockingStation.new(capacity: 20) } ## want to talk in person about this passing a hash as an argument...

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
    fill_station station ## why not station.fill_station?
    expect(station).to be_full
  end

  it "will not accept a Bike once it is full" do
    fill_station station
    # expect(lambda { station.dock(bike) }).to raise_error(RuntimeError, "Station is FULL, cannot accept Bike")
# --- the lambda is removed once 'helper method' is used, why?
    expect{ station.dock(bike) }.to raise_error(RuntimeError, "Station is FULL, cannot accept Bike")
  end

# this was my verison of test code - I try to figure it out without looking at first- I understand the tutorials, (but I want to know more about lambdas, procs, etc) regardless, I'd like to talk through this in person and see where my thought pattern was misguided. I know its too long etc, but I just want to discuss it - like how can I tell when expect statements are necessary? etc

  # it "will not accept a Bike if it is full" do
  #   expect(station).not_to be_full
  #   20.times { station.dock(bike) }
  #   expect(station).to be_full
  #   station.dock(bike)
  #   station.reject_bike
  #   expect(station.reject_bike).to raise_error(RuntimeError, "Station is FULL, cannot accept")
  # end

  it "should provide a list of availible Bikes" do
  end

end









