class Passenger

   attr_reader :name

   @@all = []

   def initialize(name)
    @name = name

     @@all << self
  end

   def rides
    Ride.all.select {|x| x.passenger == self}
  end

   def drivers
    rides.map {|x| x.driver}
  end

   def total_distance
    rides.sum {|x| x.distance}
  end

   def self.all
    @@all
  end

   def self.premium_members
    all.select {|x| x.total_distance > 100}
  end

 end
