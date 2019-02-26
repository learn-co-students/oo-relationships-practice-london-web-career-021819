#Listing has many trips
#Listing has many guests through trips

  class Listing

    attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def guests
      Trip.all.map {|trip| trip.listing == self}
    end


  end
