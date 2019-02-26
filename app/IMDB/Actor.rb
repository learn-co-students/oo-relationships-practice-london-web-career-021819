class Actor

   attr_reader :name

   @@all = []

   def initialize(name)
    @name = name

     @@all << self
  end

   def characters
    Character.all.select {|x| x.actor == self}
  end

   def self.all
    @@all
  end

   def self.most_characters
    all.max_by {|x| x.characters.count}
  end

 end
