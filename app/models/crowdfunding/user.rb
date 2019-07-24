class User
  attr_reader :name

  @@users = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@users
  end

  def self.highest_pledge
    Pledge.all.max_by {|pledge| pledge.amount}.user
  end

  def self.multi_pledger
    all.select {|user| user.pledges.count > 1}
  end

  def self.project_creator
    all.select {|user| user.projects.count > 0}
  end

  def pledges
    Pledge.all.select {|pledge| pledge.user == self}
  end

  def projects
    Project.all.select {|project| project.user == self}
  end
end
