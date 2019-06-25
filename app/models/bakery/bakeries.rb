class Bakery
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def desserts
    Desserts.all.select { |des| des.bakery == self }
  end

  def ingredients
    desserts.map(&:ingredients)
  end

  def shopping_list
    ingredients.flatten.map(&:name)
  end

  def average_calories
    array_of_calories = desserts.map(&:calories)
    array_of_calories.sum.to_f / array_of_calories.size.to_f
  end
end
