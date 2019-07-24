class Character
  include Screen::PersonInit

  attr_reader :name
  attr_accessor :actor

  @@characters = []

  def self.all
    @@characters
  end

  def self.most_appearances
    all.max_by {|character| character.projects.count}
  end

  def appears_in(project)
    Appearance.new(self, project)
  end

  def episodes
    projects.select {|project| project.class == Episode}
  end

  def shows
    episodes.collect(&:show)
  end

  def movies
    projects.select {|project| project.class == Movie}
  end

  def cast(actor)
    @actor = actor
  end

  def appearances
    Appearance.all.select {|appearance| appearance.character == self}
  end

  def projects
    appearances.collect(&:project)
  end
end
