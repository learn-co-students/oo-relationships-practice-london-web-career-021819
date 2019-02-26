require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

u1 = User.new("stu")
u2 = User.new("dan")
u3 = User.new("sofia")

p1 = Project.new("project1", 1000, "creator1")
p2 = Project.new("project2", 2000, "creator2")
p3 = Project.new("project3", 3000, "creator3")
p4 = Project.new("project4", 4000, "creator4")

pledge1 = Pledge.new(10000, u1, p1)
pledge2 = Pledge.new(20000, u2, p2)
pledge3 = Pledge.new(30000, u3, p3)
pledge4 = Pledge.new(40000, u1, p4)
pledge5 = Pledge.new(50000, u1, p1)

Pry.start
