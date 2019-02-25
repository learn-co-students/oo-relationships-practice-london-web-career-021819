class Client
  attr_reader :name
  attr_accessor :trainer

  @@clients = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@clients
  end

  def assign_trainer(trainer)
    @trainer = trainer
  end

  def locations
    trainer.locations
  end
end
