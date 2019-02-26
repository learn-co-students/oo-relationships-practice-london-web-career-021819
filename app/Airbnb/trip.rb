class Trip

  # belongs to listings
  # belongs to guests

  attr_accessor :listing, :guest, :date

  @@all = []

  def initialize(listing, guest, date)
    @guest = guest
    @listing = listing
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end


end
