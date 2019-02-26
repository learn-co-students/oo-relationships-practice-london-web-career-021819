class Guest

# has many trips
# has many listings through trips

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def guest
    Trip.all.select {|x| x.guest == self}
  end

  def guest_listings
    guest.map {|x| x.listing}
  end

  def guest_trips
    guest.map {|x| x.date}
  end

  def guest_trips_count
    guest_trips.count
  end

  def self.pro_traveller
    Guest.all.select {|x| x.guest_trips_count > 1}
  end

  def self.find_all_by_name(guest_name)
    Guest.all.select {|x| x.name == guest_name}
  end

end
