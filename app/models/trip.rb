# Trip class
class Trip
  @@all_trips = []

  attr_reader :guest, :listing

  def self.all
    @@all_trips
  end

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    self.class.all << self
  end

end