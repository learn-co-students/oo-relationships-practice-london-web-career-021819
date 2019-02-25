class Trainer
  attr_accessor :locations

  @@trainers = []

  def initialize(name, *locations)
    @name = name
    @locations = locations
    self.class.all << self
  end

  def self.all
    @@trainers
  end

  def clients
    Client.all.select {|client| client.trainer == self}
  end

  def self.most_clients
    all.max_by {|trainer| trainer.clients.count}
  end
end
