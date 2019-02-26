class Bakery

# has many ingredients
# has many desserts, through ingredients

    attr_accessor :name

    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery_desserts
    Dessert.all.select {|x| x.bakery == self}
  end

  def bakery_desserts_ingredients
    bakery_desserts.map {|x| x.ingredients}
  end

  def average_calories
    count = bakery.map {|x| x.calorie_count}.count
    sum = bakery.map {|x| x.calorie_count}.inject(:+)
    average = sum /count
    average
  end

  def shopping_list
    bakery_desserts_ingredients.join(" ")
  end

end
