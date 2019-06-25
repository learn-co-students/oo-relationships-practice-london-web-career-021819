# Client class
class Client
  attr_accessor :trainer
  attr_reader :name

  @@all_clients = []

  def self.all
    @@all_clients
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def assign_trainer(trainer_inst)
    self.trainer = trainer_inst
  end

  def gym_location
    trainer.locations
  end

  def my_locations
    trainer.my_locations.map(&:location)
  end
end
