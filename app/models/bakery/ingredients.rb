class Ingredients

  attr_accessor :name, :calories, :dessert

  @@all = []

  def self.all
    @@all
  end

  def bakery
    self.dessert.bakery
  end

  def initialize(name, calories, dessert)
    @name = name
    @calories = calories
    @dessert = dessert
    self.class.all << self
  end

  def self.find_all_by_name(name)
    all.select { |x| x.name.include?(name) }
  end

end