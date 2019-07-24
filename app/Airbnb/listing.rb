class Listing

# has many guests
# has many guests through trips

  attr_accessor :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def listing
    Trip.all.select {|x| x.listing == self}
  end

  def listing_guests
    listing.map {|x| x.guest}
  end

  def listing_trips
    listing.map {|x| x.date}
  end

  def listing_trips_count
    listing_trips.count
  end

  def self.find_all_by_city(city_name)
    Listing.all.select {|x| x.city == city_name}
  end

  def self.most_popular
    listings = Trip.all.map {|x| x.listing}
    listings.max_by {|i| listings.count(i)}
  end

end
