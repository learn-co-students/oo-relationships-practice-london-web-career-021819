class Movie

   attr_reader :name, :characters

   @@all = []

   def initialize(name, characters)
    @name = name
    @characters = characters

     @@all << self
  end

   def self.most_actors
    all.max_by do |movie|
      movie.characters.map {|y| y.actor}.uniq.count
    end
  end

   def self.all
    @@all
  end

 end
