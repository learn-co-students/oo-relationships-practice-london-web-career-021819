class Character
  attr_reader :name, :movies

  @@characters = []

  def initialize(name, *movies)
    @name = name
    @movies = movies
    @@characters << self
  end

  def self.all
    @@characters
  end

  def self.most_appearances
    self.all.max {|a, b| a.movies.count <=> b.movies.count}
  end
end
