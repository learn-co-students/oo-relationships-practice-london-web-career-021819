class Listing
  attr_reader :city, :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(city, name)
    @city = city
    @name = name
    self.class.all << self
  end

  def trips
    Trip.all.select{|trip| trip.listing == self}
  end

  def guests
    trips.map{|trip| trip.guest}
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    self.all.select{|listing| listing.city == city}
  end

  def self.most_popular
    max_trips = self.all.map{|listing| listing.trip_count}.max
    self.all.find{|listing| listing.trip_count == max_trips}
  end
end
