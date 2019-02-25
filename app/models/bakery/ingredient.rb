class Ingredient
  attr_reader :name, :dessert, :calories

  @@ingredients = []

  def initialize(name, dessert, calories)
    @name = name
    @dessert = dessert
    @calories = calories
    @@ingredients << self
  end

  def self.all
    @@ingredients
  end

  def self.find_all_by_name(name)
    self.all.collect {|ingr| ingr.name}.grep(/#{name}/)
  end

  def bakery
    dessert.bakery
  end
end
