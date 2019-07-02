class Ingredient
  attr_reader :name, :dessert, :bakery, :calories
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, calories, dessert)
    @name = name
    @dessert = dessert
    @bakery = bakery
    @calories = calories
    self.class.all << self
  end

  # def self.find_all_by_name(ingredient)
  #   self.all.select{|element| element == (ingredient)}
  # end

end
