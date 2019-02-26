require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Listing.new("house1", "london")
l2 = Listing.new("house2", "manchester")
l3 = Listing.new("apartment1", "liverpool")

g1 = Guest.new("stu")
g2 = Guest.new("dan")
g3 = Guest.new("sofia")

t1 = Trip.new(l1, g1, "04/09/2018")
t2 = Trip.new(l1, g2, "05/09/2018")
t3 = Trip.new(l2, g2, "05/03/2017")
t4 = Trip.new(l3, g3, "21/11/2016")


Pry.start
