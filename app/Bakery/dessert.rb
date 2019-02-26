class Dessert

# has many bakeries
# has many bakeries, through ingredients

    attr_accessor :name, :ingredients, :bakery

    @@all = []

  def initialize(name, ingredients, bakery)
    @name = name
    @ingredients = ingredients
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def calories
     Ingredient.all.map do |x| x.calorie_count
       if x.dessert == self}.compact.reduce(:+)
    end
   end


end
