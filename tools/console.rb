require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Air Bnb seed data
# max = Guest.new('Max')
# tom = Guest.new('Tom')
# steve = Guest.new('Steve')
#
# london = Listing.new('London')
# london2 = Listing.new('London')
# paris = Listing.new('Paris')
# berlin = Listing.new('Berlin')
#
# max_london_trip = Trip.new(london, max)
# max_paris_trip = Trip.new(paris, max)
# tom_london_trip = Trip.new(london, tom)
# tom_berlin_trip = Trip.new(berlin, tom)
# tom_berlin_trip2 = Trip.new(berlin, tom)
# steve_berlin_trip = Trip.new(berlin, steve)

#Bakery seed data
# max = Bakery.new("Max's Bakery")
# tom = Bakery.new("Tom's Bakery")
#
# chocolate_cake = Dessert.new("Cake", max)
# cheesecake = Dessert.new("Cheesecake", tom)
# chocolate_cake2 = Dessert.new("Cake", tom)
#
#
# flour = Ingredient.new('Flour',chocolate_cake, 14)
# egg = Ingredient.new('Egg', chocolate_cake, 52)
# chocolate = Ingredient.new('Chocolate', chocolate_cake, 520)
#
# ricotta = Ingredient.new('Ricotta', cheesecake, 350)
# biscuit = Ingredient.new('Biscuit', cheesecake, 200)
#
# flour = Ingredient.new('Flour', chocolate_cake2, 14)
# egg = Ingredient.new('Egg', chocolate_cake2, 52)
# chocolate = Ingredient.new('Chocolate', chocolate_cake2, 520)

#Crowdfunding seed data
# max = User.new('Max')
# steve = User.new('Steve')
# tom = User.new('Tom')
# bob = User.new('Bob')
# kate = User.new('Kate')
#
#
# koala_hats = Project.new('Knitted Hats for Koalas', max, 5000)
# no_moon = Project.new('Destory the Moon', steve, 250000)
# world_peace = Project.new('World Peace', bob, 50)
# low_bar = Project.new('Promise little, deliver little', bob, 25)
#
# tom_for_koalas = Pledge.new(tom, koala_hats, 250)
# bob_for_koalas = Pledge.new(bob, koala_hats, 50)
#
# kate_for_moon = Pledge.new(kate, no_moon, 1000)
# bob_for_moon = Pledge.new(bob, no_moon, 15000)
# max_for_moon = Pledge.new(max, no_moon, 300)
#
# max_for_low_bar = Pledge.new(max, low_bar, 26)

# Lyft seed data
# driver_max = Driver.new('Max')
# driver_tom = Driver.new('Tom')
#
# passenger_kate = Passenger.new('Kate')
# passenger_steve = Passenger.new('Steve')
#
# ride1 = Ride.new(passenger_kate, driver_max, 25)
# ride2 = Ride.new(passenger_kate, driver_tom, 60)
# ride3 = Ride.new(passenger_kate, driver_tom, 35)
#
# ride4 = Ride.new(passenger_steve, driver_max, 30)
# ride5 = Ride.new(passenger_steve, driver_max, 30)

# # #Gym seed data
# # #Locations
# liverpool_street = Location.new('Liverpool Street')
# waterloo = Location.new('Waterloo')
# #
# # #Trainers
# trainer_kate = Trainer.new('Kate')
# trainer_kate.sign_contract(liverpool_street)
#
# trainer_steve = Trainer.new('Steve')
# trainer_steve.sign_contract(waterloo)
# trainer_steve.sign_contract(liverpool_street)
# #
# # #Kate's clients
# client_tom = Client.new('Tom')
# client_tom.assign_trainer(trainer_kate)
# #
# client_emma = Client.new('Emma')
# client_emma.assign_trainer(trainer_kate)
# #
# # #Steve's clients
# client_adam = Client.new('Adam')
# client_adam.assign_trainer(trainer_steve)
# #
# # client_bob = Client.new('Bob')
# # client_bob.assign_trainer(trainer_steve)
# #
# # client_max = Client.new('Max')
# # client_max.assign_trainer(trainer_steve)

#IMDB seed data
firefly = Show.new('Firefly')
firefly_ep1 = Episode.new('Firefly Episode 1', firefly)
firefly_ep2 = Episode.new('Firefly Episode 2', firefly)
firefly_ep3 = Episode.new('Firefly Episode 3', firefly)

mal = Character.new('Mal')
mal.appears_in(firefly_ep1)
mal.appears_in(firefly_ep2)
mal.appears_in(firefly_ep3)

wash = Character.new('Wash')
wash.appears_in(firefly_ep1)
wash.appears_in(firefly_ep2)

serenity = Movie.new('Serenity')

mal.appears_in(serenity)
wash.appears_in(serenity)

jayne = Character.new('Jayne')
jayne.appears_in(firefly_ep2)

nathan_fillion = Actor.new('Nathan Fillion')
mal.cast(nathan_fillion)

alan_tudyk = Actor.new('Alan Tudyk')
wash.cast(alan_tudyk)

castle = Show.new('Castle')
castle_ep1 = Episode.new('Castle Episode 1', castle)

rick_castle = Character.new('Rick Castle')
rick_castle.appears_in(castle_ep1)
rick_castle.cast(nathan_fillion)

# toy_story = Movie.new('Toy Story')
#
# woody = Character.new('Woody', toy_story)
# buzz = Character.new('Buzz', toy_story)
#
# tom_hanks = Actor.new('Tom Hanks', woody)
# tim_allen = Actor.new('Tim Allen', buzz)
#
# star_wars = Movie.new('Star Wars')
# empire_strikes_back = Movie.new('The Empire Strikes Back')
# solo = Movie.new("Solo")
# raiders = Movie.new('Raiders of the Lost Ark')
#
#
# luke = Character.new('Luke Skywalker', star_wars, empire_strikes_back)
# leia = Character.new('Leia Organa', star_wars, empire_strikes_back)
# han = Character.new('Han Solo', star_wars, empire_strikes_back, solo)
#
# indy = Character.new('Indiana Jones', raiders)
#
# mark_hamill = Actor.new('Mark Hamill', luke)
# carrie_fischer = Actor.new('Carrie Fischer', leia)
# harrison_ford = Actor.new('Harrison Ford', han, indy)
#
# star_wars_show = Show.new('Star Wars')

Pry.start
