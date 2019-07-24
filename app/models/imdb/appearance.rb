class Appearance
  attr_reader :character, :project

  @@appearances = []

  def initialize(character, project)
    @character = character
    @project = project
    self.class.all << self
  end

  def self.all
    @@appearances
  end
end
