# Show class
require_relative './showbizmodule.rb'
class Show
  # include ShowBiz::Initializer
  attr_reader :name

  @@shows = []

  def self.all
    @@shows
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def add_character(name, actor)
    Character.new(name, actor, self)
  end

  def self.on_the_big_screen
    Show.all.select { |show| Movie.all.any? { |movie| movie.name == show.name } }
  end
end
