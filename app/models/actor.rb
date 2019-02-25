# Actor class
class Actor

  attr_accessor :characters
  attr_reader :name

  @@all_actors = []

  def self.all
    @@all_actors
  end

  def initialize(name)
    @name = name
  end

  def self.most_characters
    actors = Character.all.map {|char| char.actor }
    actors.max_by {|actor| actors.count(actor) }
  end
end