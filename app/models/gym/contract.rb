class Contract
  attr_reader :trainer, :location

  @@contracts = []

  def initialize(trainer, location)
    @trainer = trainer
    @location = location
    self.class.all << self
  end

  def self.all
    @@contracts
  end
end
