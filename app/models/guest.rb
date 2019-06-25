# Guest class
class Guest
  attr_reader :name

  @@all_guests = []

  def self.all
    @@all_guests
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def listings
    my_trips.map(&:listing)
  end

  def trips
    Trip.all.select { |trip| trip.guest == self }
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    all.select { |guest| guest.trip_count > 0 }
  end

  def self.find_all_by_name(name)
    all.select { |guest| guest.name == name }
  end
end
