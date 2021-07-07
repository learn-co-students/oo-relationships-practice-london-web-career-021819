class Ride

attr_reader :driver, :passenger, :distance
@@all = []

  def initialize(driver, passenger, distance)
    @distance = distance
    @driver = driver
    @passenger = passenger 
    @@all << self
  end


  def self.all
    @@all
  end


end
