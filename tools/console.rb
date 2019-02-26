require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#                 AIRBNB
# # - Listings
# house01 = Listing.new('Building-01', 'Seattle')
# house02 = Listing.new('Building-02', 'London')
# house03 = Listing.new('Building-03', 'Bali')
# house04 = Listing.new('Building-04', 'Seattle')
# flat01 = Listing.new('Flat-01', 'Bali')
# flat02 = Listing.new('Flat-02', 'London')
# flat03 = Listing.new('Flat-03', 'London')
# flat04 = Listing.new('Flat-04', 'Bali')

# # - Guests
# guest01 = Guest.new('Alex')
# guest02 = Guest.new('Jar')
# guest03 = Guest.new('James')
# guest04 = Guest.new('Fred')
# guest05 = Guest.new('Denis')
# guest06 = Guest.new('Marta')
# guest07 = Guest.new('Call')
# guest08 = Guest.new('Fran')

# # - Trips
# trip01 = Trip.new(guest01, house01)
# trip02 = Trip.new(guest01, house01)
# trip03 = Trip.new(guest02, house01)
# trip04 = Trip.new(guest03, house01)
# trip05 = Trip.new(guest04, house01)
# trip06 = Trip.new(guest01, flat02)
# trip07 = Trip.new(guest08, flat02)
# trip08 = Trip.new(guest03, flat02)
# trip09 = Trip.new(guest08, house03)

# #             END OF AIRBNB

#             IMDB

# - Actors
# keanu = Actor.new('Keanu')
# bill = Actor.new('Bill')
# will = Actor.new('Will')
# bruce = Actor.new('Bruce')
# smith = Actor.new('Smith')
# jean = Actor.new('Jean')
# natalie = Actor.new('Natalie')
# arnold = Actor.new('Arnold')
# samuel = Actor.new('Samuel')
# weaver = Actor.new('Weaver')

# - Movies
# matrix = Movie.new('The Matrix')
# alien = Movie.new('Alien')
# term = Movie.new('Terminator')
# sw = Movie.new('Star Wars')

# matrix_s = Show.new('The Matrix')
# not_s = Show.new('Not')
# alien_s = Show.new('Alien')
# - - Adding Actors to Movies through Character
# matrix.add_character('Neo', keanu)
# matrix.add_character('Trinity', natalie)
# matrix.add_character('Morpheus', arnold)
# matrix.add_character('Smith', weaver)
# matrix.add_character('Oracle', samuel)

# alien.add_character('She', weaver)
# alien.add_character('Monster', smith)
# alien.add_character('Droid', arnold)

# term.add_character('T-800', arnold)
# term.add_character('John', jean)

# sw.add_character('Princess', natalie)
# sw.add_character('Anakin', arnold)
# sw.add_character('Neo', keanu)

#             END OF IMDB

# #               GYM

# # - Clients
# client01 = Client.new('Sean')
# client02 = Client.new('Sinnead')
# client03 = Client.new('Sara')
# client04 = Client.new('Surrey')
# client05 = Client.new('Sure')
# client06 = Client.new('Susan')

# # - Locations
# location01 = Location.new('Avenue')
# location02 = Location.new('First')
# location03 = Location.new('Second')
# location04 = Location.new('Third')
# location05 = Location.new('Electric')
# location06 = Location.new('King-Kong')
# location07 = Location.new('Netherealm')

# # - Trainers
# trainer01 = Trainer.new('Jack')
# trainer02 = Trainer.new('Jerry')
# trainer03 = Trainer.new('John')
# trainer04 = Trainer.new('Jebediah')
# trainer05 = Trainer.new('Josh')

# # - Location + Trainer "Contract"

# JointClass.new(trainer01, location01)
# JointClass.new(trainer01, location02)
# JointClass.new(trainer01, location03)
# JointClass.new(trainer01, location04)
# JointClass.new(trainer01, location05)
# JointClass.new(trainer02, location01)
# JointClass.new(trainer02, location03)
# JointClass.new(trainer02, location04)
# JointClass.new(trainer02, location05)
# JointClass.new(trainer03, location07)
# JointClass.new(trainer03, location06)
# JointClass.new(trainer03, location01)
# JointClass.new(trainer04, location01)
# JointClass.new(trainer04, location02)
# JointClass.new(trainer04, location03)
# JointClass.new(trainer04, location04)
# JointClass.new(trainer04, location05)
# JointClass.new(trainer04, location06)
# JointClass.new(trainer04, location07)
# JointClass.new(trainer05, location01)
# JointClass.new(trainer05, location04)
# JointClass.new(trainer05, location06)

# # - Assign Trainers to Clients

# client01.assign_trainer(trainer04)
# client02.assign_trainer(trainer04)
# client03.assign_trainer(trainer01)
# client04.assign_trainer(trainer02)
# client05.assign_trainer(trainer03)
# client06.assign_trainer(trainer05)

# #               END OF GYM

# # -             CROWDFUNDING

# # - Users
# user001 = User.new('Baal')
# user002 = User.new('Caal')
# user003 = User.new('Daal')
# user004 = User.new('Gaal')
# user005 = User.new('Faal')
# user006 = User.new('Laal')
# user007 = User.new('Zaal')
# user008 = User.new('Xaal')
# user009 = User.new('Maal')
# user010 = User.new('Naal')
# user011 = User.new('Taal')

# # - Projects
# # pr1= user001.create_project('Time-stopper', 2_000_000_001)
# # user002.create_project('Magnetron', 50_000)
# # user003.create_project('Game', 400_000)

# pro01 = Project.new('Time-stopper', user001, 2_000_000_001)
# pro02 = Project.new('Magnetron', user002, 50_000)
# pro03 = Project.new('Game', user003,400_000)


# # - Pledges

# # pl1 = user004.pledge_project('Time-stopper', 300_000)
# # user005.pledge_project('Time-stopper', 323_300_000)
# # user006.pledge_project('Magnetron', 410_000)

# pledge01 = Pledge.new(user004, pro01, 300_000)
# pledge02 = Pledge.new(user005, pro01, 323_300_000)
# pledge03 = Pledge.new(user006, pro02, 410_000)
# pledge04 = Pledge.new(user006, pro01, 5_410_000)
# pledge05 = Pledge.new(user006, pro01, 3_410_000)
# pledge06 = Pledge.new(user007, pro01, 40_000)
# pledge07 = Pledge.new(user007, pro02, 4_000)

# # -             END OF CROWDFUNDING

# BAKERY
# - Bakeries

bak1 = Bakery.new('Bak1')
bak2 = Bakery.new('Bak2')

# - Desserts
des1 = Desserts.new('Dess1', bak1)
des2 = Desserts.new('Dess2', bak2)
des3 = Desserts.new('Dess3', bak1)

# - Ingredients

ingr1 = Ingredients.new('Ingr1', 200, des1)
ingr2 = Ingredients.new('Ingr2', 300, des2)
ingr3 = Ingredients.new('Ingr3', 740, des1)
ingr4 = Ingredients.new('Ingr4', 50, des3)




# END OF BAKERY

Pry.start

'oi'
