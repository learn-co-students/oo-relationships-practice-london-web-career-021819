class Bakery
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def desserts
    Dessert.all.select{|dessert| dessert.bakery == self}
  end

  def ingredients
    Ingredient.all.select{|ingredient| ingredient.dessert.bakery == self}
  end

  def average_calories
    total_bakery = ingredients.map{|ingredient| ingredient.calories}.inject(:+)
    total_all_bakeries = Ingredient.all.map{|ingredient| ingredient.calories}.inject(:+)
    return total_bakery/total_all_bakeries.to_f
  end

  def shopping_list
    ingredients.map{|ingredient| ingredient.name}
  end

end
