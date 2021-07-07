class Project

@@all = []

attr_accessor :goal_amount, :creator

  def initialize(name, creator, goal_amount)
    @name = name
    @creator = creator
    @pledge_amount = goal_amount
    @@all << self
  end


  def self.no_pledges
    Pledge.all - Pledge.all.map {|pledge| pledge.project}.uniq
  end

  def goal_met?
    self.goal_amount
  end

  def self.above_goal

  end

  def self.all
    @@all
  end


end
