require './lib/bike'

describe Bike do

  let(:bike) { Bike.new }

  it "should be working upon initialization" do
    expect(bike).not_to be_broken
  end

  it "should be able to break" do
    bike.break!
    expect(bike).to be_broken
  end

  it "should be able to get fixed once broken" do
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

end