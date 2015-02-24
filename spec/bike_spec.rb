require 'bike'

describe Bike do

  it "should be working upon initialization" do
    bike = Bike.new
    expect(bike).not_to be_broken
  end

  it "should be able to break" do
    bike = Bike.new
    bike.break!
    expect(bike).to be_broken
  end



end