class Listing

  attr_reader :guest, :city

  @@all = []


  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips  #all trips associated with this listing. use as helper method
      Trip.all.select {|trip| trip.listing == self}
  end

  def trip_count
    trips.count
  end

  def guests
    trips.map {|trip| trip.guest }
  end

  def self.find_all_by_city(string)
    @@all.select {|listing| listing.city == string }
  end

  # def self.most_popular
  #   @@all.max_by {|listing| listing.trip_count }Gu
  # end




end
