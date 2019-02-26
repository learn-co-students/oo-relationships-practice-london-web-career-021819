class Desserts

  attr_accessor :name, :bakery

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    self.class.all << self
  end

  def ingredients
    Ingredients.all.select { |ing| ing.dessert == self }
  end

  def calories
    ingredients.map(&:calories).sum
  end

end