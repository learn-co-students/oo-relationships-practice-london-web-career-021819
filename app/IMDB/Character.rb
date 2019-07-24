class Character

   attr_reader :name, :actor

   @@all = []

   def initialize(name, actor)
    @name = name
    @actor = actor

     @@all << self
  end

   def num_movie_appearances
    Movie.all.select {|x| x.characters.include?(self)}.count
  end

   def num_show_appearances
    Show.all.select {|x| x.characters.include?(self)}.count
  end

   def self.most_appearances
    all.max_by {|x| x.num_movie_appearances + x.num_show_appearances}
  end

   def self.all
    @@all
  end

 end
