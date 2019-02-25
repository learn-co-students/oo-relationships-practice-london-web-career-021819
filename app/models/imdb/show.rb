class Show
  include Screen

  @@shows = []

  def self.all
    @@shows
  end

  def self.on_the_big_screen
    movie_titles = Movie.all.collect {|mov| mov.title}
    self.all.select {|show| movie_titles.include?(show.title)}
  end
end
