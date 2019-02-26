class Client

  attr_accessor :trainer
  attr_reader :name

  @@all = []

  def initialize(name, trainer)
    @name = name
    @trainer = trainer
    @@all << self
  end

  def self.all
      @@all
  end

  def locations
    @trainer.locations
  end

  def assign_trainer(trainer)
    self.trainer = trainer
  end
  #sarah.assign_trainer(manu)
  #sarah.trainer = (trainer passed in as argument)



end
