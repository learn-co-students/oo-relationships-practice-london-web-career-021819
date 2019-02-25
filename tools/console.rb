require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#                 AIRBNB
# - Listings
# house01 = Listing.new('Building-01', 'Seattle')
# house02 = Listing.new('Building-02', 'London')
# house03 = Listing.new('Building-03', 'Bali')
# house04 = Listing.new('Building-04', 'Seattle')
# flat01 = Listing.new('Flat-01', 'Bali')
# flat02 = Listing.new('Flat-02', 'London')
# flat03 = Listing.new('Flat-03', 'London')
# flat04 = Listing.new('Flat-04', 'Bali')

# - Guests
# guest01 = Guest.new('Alex')
# guest02 = Guest.new('Jar')
# guest03 = Guest.new('James')
# guest04 = Guest.new('Fred')
# guest05 = Guest.new('Denis')
# guest06 = Guest.new('Marta')
# guest07 = Guest.new('Call')
# guest08 = Guest.new('Fran')

# - Trips
# trip01 = Trip.new(guest01, house01)
# trip02 = Trip.new(guest01, house01)
# trip03 = Trip.new(guest02, house01)
# trip04 = Trip.new(guest03, house01)
# trip05 = Trip.new(guest04, house01)
# trip06 = Trip.new(guest01, flat02)
# trip07 = Trip.new(guest08, flat02)
# trip08 = Trip.new(guest03, flat02)
# trip09 = Trip.new(guest08, house03)

#             END OF AIRBNB

#             IMDB

# - Actors
keanu = Actor.new('Keanu')
bill = Actor.new('Bill')
will = Actor.new('Will')
bruce = Actor.new('Bruce')
smith = Actor.new('Smith')
jean = Actor.new('Jean')
natalie = Actor.new('Natalie')
arnold = Actor.new('Arnold')
samuel = Actor.new('Samuel')
weaver = Actor.new('Weaver')

# - Movies
matrix = Movie.new('The Matrix')
alien = Movie.new('Alien')
term = Movie.new('Terminator')
sw = Movie.new('Star Wars')


matrix_s = Show.new('The Matrix')
not_s = Show.new('Not')
alien_s = Show.new('Alien')
# - - Adding Actors to Movies through Character
matrix.add_character('Neo', keanu)
matrix.add_character('Trinity', natalie)
matrix.add_character('Morpheus', arnold)
matrix.add_character('Smith', weaver)
matrix.add_character('Oracle', samuel)

alien.add_character('She', weaver)
alien.add_character('Monster', smith)
alien.add_character('Droid', arnold)

term.add_character('T-800', arnold)
term.add_character('John', jean)

sw.add_character('Princess', natalie)
sw.add_character('Anakin', arnold)
sw.add_character('Neo', keanu)


#             END OF IMDB

Pry.start

'oi'
