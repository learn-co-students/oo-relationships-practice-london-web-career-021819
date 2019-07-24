class Movie
  include Screen::TopLevelInit, Screen::Project

  attr_reader :title

  @@movies = []

  def self.all
    @@movies
  end
end
