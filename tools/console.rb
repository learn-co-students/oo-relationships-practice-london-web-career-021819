require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end


u1 = User.new("Schaz")
u2 = User.new("Silvie")
u3 = User.new("Hunter")
u4 = User.new("Niky")
u5 = User.new("Karlie")


p1 = Project.new("dog_shelter", u1, 3000)
p2 = Project.new("demetia_fundraiser", u2, 500)
p3 = Project.new("top_surgery_fundraiser", u4, 5000)


pl1 = Pledge.new(u5, p2, 60)
pl2 = Pledge.new(u2, p1, 300)
pl3 = Pledge.new(u4, p3, 200)
pl5 = Pledge.new(u4, p3, 5000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
