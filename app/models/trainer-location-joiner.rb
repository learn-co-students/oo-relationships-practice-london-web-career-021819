# Joint class
class JointClass

  attr_reader :trainer, :location

  @@all = []
  
  def self.all
    @@all
  end

  def initialize(trainer, location)
    @trainer = trainer
    @location = location
    self.class.all << self
  end


end
