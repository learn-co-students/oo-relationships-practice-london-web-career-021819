require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
####### AIRBNB example
# thomas = Guest.new("Thomas")
# harry = Guest.new("Harry")
# katie = Guest.new("Katie")
#
# london = Listing.new("London")
# sanfran = Listing.new("San Francisco")
# paris = Listing.new("Paris")
#
# t1 = Trip.new(thomas, london)
# t2 = Trip.new(thomas, sanfran)
# t3 = Trip.new(katie, paris)
# t4 = Trip.new(harry, london)
# t5 = Trip.new(katie, sanfran)

p1 = Passenger.new("Thomas")
p2 = Passenger.new("Harry")
p3 = Passenger.new("Megan")

d1 = Driver.new("Shumi")
d2 = Driver.new("Alonso")
d3 = Driver.new("Fangio")

r1 = Ride.new(d1, p1, 30.1)
r2 = Ride.new(d2, p1, 13.5)
r3 = Ride.new(d3, p2, 3.4)
r4 = Ride.new(d1, p3, 103.2)
r5 = Ride.new(d2, p2, 7.3)





# u1 = User.new("Thomas")
# u2 = User.new("Alice")
# u3 = User.new("Angus")
#
# proj1 = Project.new("NASA", u1, 1001)
# proj2 = Project.new("ESA", u2, 2001)
# proj3 = Project.new("Space X", u3, 3001)
#
# pledge1 = Pledge.new(u1, proj2, 100)
# pledge2 = Pledge.new(u2, proj1, 200)
# pledge3 = Pledge.new(u3, proj3, 300)

Pry.start
