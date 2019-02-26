# Character class
class Character
  attr_reader :name, :actor, :movie

  @@all_characters = []

  def self.all
    @@all_characters
  end

  def initialize(name, actor, movie)
    @name = name
    @actor = actor
    @movie = movie
    self.class.all << self
  end

  def self.most_appearances
    characters = all.map(&:name)
    characters.max_by { |char| characters.count(char) }
  end
end

