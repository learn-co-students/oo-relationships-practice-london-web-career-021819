class Trip
  attr_reader :listing, :guest

  @@trips = []

  def initialize(listing, guest)
    @listing = listing
    @guest = guest
    @@trips << self
  end

  def self.all
    @@trips
  end
end
