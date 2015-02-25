class DockingStation

  def initialize
    @bikes =  []
  end

  def bike_count
    @bikes.count
  end

  def dock(bike)
    @bikes << bike
  end

  def release_bike(bike)
    @bikes.delete(bike)
  end

end