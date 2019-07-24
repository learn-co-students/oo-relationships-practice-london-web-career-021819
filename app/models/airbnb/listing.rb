class Listing
  attr_reader :city

  @@listings = []

  def initialize(city)
    @city = city
    @@listings << self
  end

  def self.all
    @@listings
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def guests
    trips.collect {|trip| trip.guest}
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    self.all.select {|listing| listing.city == city}
  end

  def self.most_popular
    all.max {|a,b| a.trip_count <=> b.trip_count}
  end
end
