class Contract

  attr_accessor :name, :trainer, :location

  @@all = []

  def initialize(name, trainer, location)
    @name = name
    @trainer = trainer
    @location = location
    @@all << self
  end

  def self.all
      @@all
  end


end
