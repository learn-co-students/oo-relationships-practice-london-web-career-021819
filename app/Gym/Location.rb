class Location

   attr_reader :name

   @@all = []

   def initialize(name)
    @name = name

     @@all << self
  end

   def trainers
    Trainer.all.select {|x| x.locations.include?(self)}
  end

   def clients
    trainers.map {|x| x.clients}
  end

   def num_clients
    clients.count
  end

   def self.all
    @@all
  end

   def self.least_clients
    all.min_by{|x| x.num_clients}
  end

 end
