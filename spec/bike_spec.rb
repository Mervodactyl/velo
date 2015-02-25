<<<<<<< HEAD
require './lib/bike'

describe Bike do

  let(:bike) { Bike.new }

  it "should be working upon initialization" do
    expect(bike).not_to be_broken
  end

  it "should be able to break" do
=======
require 'bike'

describe Bike do

  it "should be in working condition upon initialization" do
    bike = Bike.new
    expect(bike).not_to be_broken
  end

  it 'can be broken' do
    bike = Bike.new
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e
    bike.break!
    expect(bike).to be_broken
  end

<<<<<<< HEAD
  it "should be able to get fixed once broken" do
=======
  it 'can be fixed' do
    bike = Bike.new
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

<<<<<<< HEAD
end
=======
end
>>>>>>> 05d22e7b9a9c024c416938b41859a4098ae0df9e
