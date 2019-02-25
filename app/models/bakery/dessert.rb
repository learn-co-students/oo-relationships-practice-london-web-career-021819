class Dessert
  attr_accessor :bakery

  @@desserts = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@desserts << self
  end

  def self.all
    @@desserts
  end

  def ingredients
    Ingredient.all.select {|ingr| ingr.dessert == self}
  end
  
  def calories
    ingredients.inject(0) {|sum, ingr| sum + ingr.calories}
  end
end
