class Ride
  attr_reader :passenger, :driver, :distance

  @@rides = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance.to_f
    self.class.all << self
  end

  def self.all
    @@rides
  end

  def self.average_distance
    total_distance/all.count
  end

  def self.total_distance
    all.inject(0) {|sum, ride| sum + ride.distance}
  end
end
