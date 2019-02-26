require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

b1 = Bakery.new("bakery1")
b2 = Bakery.new("bakery2")
b3 = Bakery.new("bakery3")

d1 = Dessert.new("chocolate", "cocao", b1)
d2 = Dessert.new("vanilla", "flowers", b2)
d3 = Dessert.new("strawberry", "fruit", b3)

i1 = Ingredient.new("cocao", 20, b1, d1)
i2 = Ingredient.new("flowers", 30, b2, d2)
i3 = Ingredient.new("fruit", 40, b3, d3)
i4 = Ingredient.new("fruit", 40, b1, d3)

Pry.start
