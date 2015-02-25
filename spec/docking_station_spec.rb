require 'docking_station'

describe DockingStation do

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e
  def fill_station(station) ## helper methods? 'code' written in the test file for readability and ease of use? in the same way we would use doubles?
    20.times { station.dock(bike) }  ## what is this? a hash? why is it written this way?
  end

  let(:bike)    { Bike.new }
  let(:station) { DockingStation.new(capacity: 20) } ## want to talk in person about this passing a hash as an argument...
<<<<<<< HEAD
=======
  def fill_station(station)
    20.times { station.dock(bike) }
  end

  let(:bike)    { Bike.new }
  let(:station) { DockingStation.new(capacity: 20) }
>>>>>>> 01db682173323c23f9099a4dd1c8c1aaa0570e92
=======
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e

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
<<<<<<< HEAD
<<<<<<< HEAD
    fill_station station ## why not station.fill_station?
=======
    fill_station station
>>>>>>> 01db682173323c23f9099a4dd1c8c1aaa0570e92
=======
    fill_station station ## why not station.fill_station?
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e
    expect(station).to be_full
  end

  it "will not accept a Bike once it is full" do
    fill_station station
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e
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

<<<<<<< HEAD
=======
    expect{ station.dock(bike) }.to raise_error(RuntimeError, "Station is FULL, cannot accept Bike")
  end

  it "should provide a list of availible Bikes" do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break!
    station.dock(working_bike)
    station.dock(broken_bike)
    expect(station.available_bikes).to eq([working_bike])
  end

=======
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e
end









