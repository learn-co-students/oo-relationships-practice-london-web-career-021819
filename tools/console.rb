require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

#AIRBNB

#Guest
laura = Guest.new("Laura")
edd = Guest.new("Edd")
christina = Guest.new("Christina")
jay = Guest.new("Jay")

#Listing
compton_road = Listing.new("44-45 Compton Road")

#Trip
holiday1 = Trip.new("Summer break", compton_road, laura)


#GYM
# #Location
# angel = Location.new("Angel")
# old_street = Location.new("Old Street")
#
# #Trainer
# george = Trainer.new("George")
# manu = Trainer.new("Manu")
#
# #Client
# laura = Client.new("Laura", manu)
# sarah = Client.new("Sarah", george)
#
# #Contract
# contract1 = Contract.new("Q1 2019", george, angel)
# contract2 = Contract.new("Q4 2018", manu, old_street)
# contract3 = Contract.new("Q2 2017", george, old_street)
# contract4 = Contract.new("Q3 2019", manu, old_street)

#Client#instance_methods

# location
# laura.location

# assign_trainer
# sarah.assign_trainer(manu)

Pry.start
