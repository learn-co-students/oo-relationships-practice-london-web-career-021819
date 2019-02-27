class Dessert
  attr_reader :name, :bakery
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
    Ingredient.all.select{|ingredient| ingredient.dessert == self}
  end


  def calories
    total_dessert = 0
    ingredients.each do |ingredient|
      total_dessert += ingredient.calories
    end
    total_dessert
  end



end
