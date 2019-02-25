class Passenger
  @@passengers = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@passengers
  end

  def self.premium_members
    all.select {|passenger| passenger.total_distance > 100}
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def total_distance
    rides.inject(0) {|sum, ride| sum + ride.distance}
  end

  def drivers
    rides.collect {|ride| ride.driver}.uniq
  end
end
