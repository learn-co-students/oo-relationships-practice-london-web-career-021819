class Client
  include Saveable

  attr_reader :name
  attr_accessor :trainer

  @@clients = []

  def self.all
    @@clients
  end

  def assign_trainer(trainer)
    self.trainer = trainer
  end
end
