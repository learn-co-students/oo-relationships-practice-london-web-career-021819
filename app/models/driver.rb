class Driver

@@all = []

attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    rides.map {|ride| ride.passenger }
  end

  def total_distance_driver
    total = 0
    dist_arr = self.rides.map {|ride| ride.distance }
    dist_arr.each {|dist| total += dist}
    total
  end

  def self.mileage_cap(distance)
    Driver.all.select {|driver| driver.total_distance_driver > distance }
  end

end
