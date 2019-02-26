class Actor
  include Screen::PersonInit

  @@actors = []

  def self.all
    @@actors
  end

  def characters
    Character.all.select {|character| character.actor == self}
  end

  def self.most_characters
    all.max_by {|actor| actor.characters.count}
  end

  def movies
    characters.collect(&:movies).flatten
  end

  def episodes
    characters.collect(&:episodes).flatten
  end

  def shows
    characters.collect(&:shows).flatten.uniq
  end

  def filmography
    characters.collect(&:appearances).flatten
  end
end
