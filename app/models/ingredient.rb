class Ingredient

# belongs to bakery
# belongs to dessert

    attr_accessor :name, :calorie_count, :bakery, :dessert

    @@all = []

  def initialize(name, calorie_count, bakery, dessert)
    @name = name
    @calorie_count = calorie_count
    @bakery = bakery
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)
    Ingredient.all.select {|x| x.name.include?(ingredient)}
  end


end
