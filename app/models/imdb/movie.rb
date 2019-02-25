class Movie
  include Screen
  
  @@movies = []

  def self.all
    @@movies
  end

  def characters
    Character.all.select {|character| character.movies.include?(self)}
  end

  def num_characters
    characters.count
  end

  def self.most_actors
    self.all.max {|a, b| a.num_characters <=> b.num_characters}
  end
end
