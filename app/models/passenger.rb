class Passenger

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
   Ride.all.select {|ride| ride.passenger == self}
 end

 def drivers
   rides.map {|rides| rides.driver }
 end

 def total_distance
   total = 0
   dist_arr = self.rides.map {|ride| ride.distance }
   dist_arr.each {|dist| total += dist}
   total
 end

 def self.premium_members #want return passengers
    @@all.select {|pass| pass.total_distance > 100}
 end


end
