# Listing class
class Listing
  attr_reader :name, :city

  @@all_listings = []

  def self.all
    @@all_listings
  end

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

  def guests
    trips.map(&:guest)
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city_name)
    all.select { |listing| listing.city == city_name }
  end

  def self.most_popular
    Trip.all.max_by { |e| Trip.all.count(e) }.listing
  end
end
