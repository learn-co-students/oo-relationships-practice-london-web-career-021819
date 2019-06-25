# Trainer class
class Trainer
  attr_reader :name, :clients

  @@all_trainers = []

  def self.all
    @@all_trainers
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def my_clients
    Client.all.select { |c| c.trainer == self }
  end

  def my_locations
    JointClass.all.select { |contract| contract.trainer == self }
  end

  def self.most_clients
    all.max_by { |trainer| trainer.my_clients.count }
  end
end
