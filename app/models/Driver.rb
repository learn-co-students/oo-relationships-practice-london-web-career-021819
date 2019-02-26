class Driver

   attr_reader :name

   @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end

   def rides
    Ride.all.select {|x| x.driver == self}
  end

   def passengers
    rides.map {|x| x.passenger}
  end

   def total_distance
    rides.sum {|x| x.distance}
  end

   def self.all
    @@all
  end

   def self.mileage_cap(distance)
    all.select {|x| x.total_distance > distance}
  end

 end
