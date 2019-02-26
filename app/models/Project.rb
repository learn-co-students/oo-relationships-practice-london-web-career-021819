class Project

# project has many pledges
# project has many users, through pledges

  attr_accessor :name, :goal_amount, :creator

  @@all = []

  def initialize(name, goal_amount, creator)
    @name = name
    @goal_amount = goal_amount
    @creator = creator
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select {|x| x.project == self}
  end

  def pledge_count
    pledges.count
  end

  def pledge_total
      pledges.map {|x| x.amount}.reduce(:+)
  end

  def self.no_pledges
    Project.all.select {|x| x.pledge_count < 1}
  end

  def self.above_goal
    Project.all.select {|x| x.goal_amount < x.amount }
  end

  def backers
    pledges.map {|x| x.user}.uniq
  end

  def self.most_backers
    Project.all.max_by {|x| x.backers.count}
  end

end
