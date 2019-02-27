class Guest

attr_reader :name, :trip

@@all = []


  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def listings
    Trip.all.select {|trip| trip.guest == self }
  end

  def trip_count #returns number of trips guest has taken
    
  end

end
