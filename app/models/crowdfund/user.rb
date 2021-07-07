class User

  @@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def create_project(name, creator, goal_amount)
    Project.new(name, self, goal_amount)
  end

  def back_project(project, amount)
    Pledge(self, project, amount)
  end

  def self.highest_pledge
    Pledge.all.max_by{|pledge| pledge.amount }.backer
  end

  def self.multi_pledger

  end

  def self.all
    @@all
  end


end
