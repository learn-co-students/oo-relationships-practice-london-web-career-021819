class Project
  attr_reader :name, :user, :goal

  @@projects = []

  def initialize(name, user, goal)
    @name = name
    @user = user
    @goal = goal
    self.class.all << self
  end

  def self.all
    @@projects
  end

  def self.no_pledges
    all.select {|project| project.pledges.count == 0}
  end

  def self.above_goal
    all.select {|project| project.reached_goal?}
  end

  def self.most_backers
    all.max_by {|project| project.pledges.count}
  end

  def pledges
    Pledge.all.select {|pledge| pledge.project == self}
  end

  def amount_pledged
    pledges.inject(0) {|sum, pledge| sum + pledge.amount}
  end

  def reached_goal?
    amount_pledged > goal
  end
end
