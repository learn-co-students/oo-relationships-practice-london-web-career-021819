class Show
  include Screen::TopLevelInit

  attr_reader :title

  @@shows = []

  def self.all
    @@shows
  end

  def episodes
    Episode.all.select {|ep| ep.show == self}
  end

  def characters
    episodes.collect(&:characters).flatten.uniq
  end
end
