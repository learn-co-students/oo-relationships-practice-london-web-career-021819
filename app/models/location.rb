# Location class
class Location
  attr_reader :name, :trainers

  @@all_locations = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all_locations
  end

  def self.least_clients
    locs = JointClass.all.map(&:location)
    locs.min_by { |loc| locs.count(loc) }
  end

end
