class Episode
  include Screen::Project

  attr_reader :episode_id, :show

  @@episodes = []

  def initialize(episode_id, show)
    @episode_id = episode_id
    @show = show
    self.class.all << self
  end

  def self.all
    @@episodes
  end

  def characters
    appearances.collect(&:character)
  end
end
