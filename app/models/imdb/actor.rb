class Actor
  attr_reader :name, :characters

  @@actors = []

  def initialize(name, *characters)
    @name = name
    @characters = characters
    @@actors << self
  end

  def self.all
    @@actors
  end

  def self.most_characters
    self.all.max {|a, b| a.characters.count <=> b.characters.count}
  end
end
