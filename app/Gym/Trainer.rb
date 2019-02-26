class Trainer

   attr_accessor :locations
  attr_reader :name

   @@all = []

   def initialize(name)
    @name = name
    @locations = []

     @@all << self
  end

   def assign_location(location)
    @locations |= [location]
  end

   def clients
    Client.all.select {|x| x.trainer == self}
  end

   def self.all
    @@all
  end

   def self.most_clients
    all.max_by {|x| x.clients.count}
  end

 end
