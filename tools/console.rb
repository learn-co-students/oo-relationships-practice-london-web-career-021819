#!/usr/bin/env ruby

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#crowdfunding
khang = User.new("Khang")
maxmersch = User.new("Max")
julien = User.new("Julien")
satoshi = User.new("Satoshi Nakamoto")
vitalik = User.new("Vitalik Buterin")
will = User.new("Will Warren")
elon = User.new("Elon Musk")
apple = User.new("Apple")
flatiron = User.new("Flatiron School")
faiz = User.new("Faiz")


btc = Project.new("Bitcoin", 10**9, satoshi)
eth = Project.new("Ethereum", 2*(10**8), vitalik)
zrx = Project.new("0x", 10**6, will)
tesla = Project.new("Tesla", 100*(10**9), elon)
boring = Project.new("The Boring Company", 50*(10**9), elon)
spacex = Project.new("SpaceX", 10**12, elon)
iphone = Project.new("iPhone", 10**12, apple)
bootcamp = Project.new("Bootcamp", 10000, flatiron)


p1 = Pledge.new("Pledge 1", khang , eth, 10000)
p2 = Pledge.new("Pledge 2", khang , zrx, 5000)
p3 = Pledge.new("Pledge 3", khang , tesla, 500)
p4 = Pledge.new("Pledge 4", maxmersch, eth, 5000)
p5 = Pledge.new("Pledge 5", maxmersch, btc, 1000)
p6 = Pledge.new("Pledge 6", maxmersch, zrx, 2000)
p7 = Pledge.new("Pledge 7", maxmersch, boring, 10000)
p8 = Pledge.new("Pledge 8", julien, eth, 10000)
p9 = Pledge.new("Pledge 9", julien, btc, 5000)
p10 = Pledge.new("Pledge 10", julien, zrx, 2000)
p11 = Pledge.new("Pledge 11", elon, eth, 10**9)
p12 = Pledge.new("Pledge 12", vitalik, spacex, 10**8)
p13 = Pledge.new("Pledge 13", khang, bootcamp, 10000)
p14 = Pledge.new("Pledge 14", faiz, bootcamp, 10000)


#airbnb
k = Guest.new("Khang")
f = Guest.new("Faiz")
l = Guest.new("Louie")

l1 = Listing.new("London", "L1")
l2 = Listing.new("London", "L2")
l3 = Listing.new("SF", "L3")
l4 = Listing.new("SF", "L4")
l5 = Listing.new("SF", "L5")
l6 = Listing.new("SF", "L6")
l7 = Listing.new("NYC", "L7")

trip1 = Trip.new(k, l1)
trip2 = Trip.new(k, l3)
trip3 = Trip.new(f, l2)
trip4 = Trip.new(l, l4)
trip5 = Trip.new(l, l1)
trip6 = Trip.new(k, l6)


#bakery
bakery1 = Bakery.new('B1')
bakery2 = Bakery.new('B2')

dessert1 = Dessert.new('D1', bakery1)
dessert2 = Dessert.new('D2', bakery2)
dessert3 = Dessert.new('D3', bakery2)

i1 = Ingredient.new("I1", 10, dessert1)
i2 = Ingredient.new("I2", 20, dessert1)
i3 = Ingredient.new("I3", 30, dessert2)
i4 = Ingredient.new("I4", 5, dessert2)
i5 = Ingredient.new("I5", 25, dessert2)
i6 = Ingredient.new("I5", 25, dessert1)





Pry.start
