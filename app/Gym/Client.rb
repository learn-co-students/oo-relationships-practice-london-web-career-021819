class Client

   attr_accessor :trainer
  attr_reader :name

   @@all = []

   def initialize(name)
    @name = name

     @@all << self
  end

   def assign_trainer(trainer)
    @trainer = trainer
  end


   def self.all
    @@all
  end

 end
