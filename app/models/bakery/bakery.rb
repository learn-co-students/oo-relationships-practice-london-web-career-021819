class Bakery
  @@bakeries = []

  def initialize(name)
    @name = name
    @@bakeries << self
  end

  def self.all
    @@bakeries
  end
  # ingredients
  def desserts
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients
    desserts.collect {|dessert| dessert.ingredients}.flatten
  end

  def average_calories
    desserts.inject(0) {|sum, dessert| sum + dessert.calories}/desserts.count
  end
  # shopping_list
  def shopping_list
    ingredients.collect {|ingr| ingr.name}
  end
end
