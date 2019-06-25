# User class
class User
  attr_reader :name

  @@all_user_instances = []

  def self.all
    @@all_user_instances
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def create_project(name, goal)
    Project.new(name, self, goal)
  end

  def pledge_project(name_str, amount)
    project = Project.all.find { |proj| proj.name == name_str }
    if project
      "That Project doesn't exist. Check the name."
    else
      Pledge.new(self, project, amount)
    end
  end

  def times_pledged
    Pledge.all.select { |p| p.user == self }.count
  end

  def self.project_creator
    Project.all.map(&:user)
  end

  def self.highest_pledge
    Pledge.all.max_by(&:amount).user
  end

  def self.multi_pledger
    all.select { |u| u.times_pledged > 1 }
  end
end
