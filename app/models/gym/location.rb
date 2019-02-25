class Location
  attr_reader :name

  @@locations = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@locations
  end

  def trainers
    Trainer.all.select {|trainer| trainer.locations.include?(self)}
  end

  def clients
    trainers.collect {|trainer| trainer.clients}.flatten
  end

  def self.least_clients
    all.min_by {|loc| loc.clients.count}
  end
end
