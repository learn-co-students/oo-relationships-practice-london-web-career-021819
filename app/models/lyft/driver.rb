class Driver
  attr_reader :name

  @@drivers = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@drivers
  end

  def self.mileage_cap(distance)
    all.select {|driver| driver.total_distance > distance}
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def total_distance
    rides.inject(0) {|sum, ride| sum + ride.distance}
  end

  def passengers
    rides.collect {|ride| ride.passenger}.uniq
  end
end
