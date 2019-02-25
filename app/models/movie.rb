require_relative './showbizmodule.rb'
# Movie class
class Movie
  # include ShowBiz::Initializer
  attr_reader :name, :actor

  @@all_movies = []

  def self.all
    @@all_movies
  end

  def self.characters
    @@characters
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def add_character(name, actor)
    Character.new(name, actor, self)
  end

  def actors
    Character.all.select { |char| char.movie == self }
  end

  def self.most_actors
    actors = Character.all.map(&:movie)
    actors.max_by { |actor| actors.count(actor) }
  end
end
