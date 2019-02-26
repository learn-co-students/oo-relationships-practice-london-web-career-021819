# Project class
class Project
  attr_reader :name, :user, :goal

  @@all_projects = []

  def self.all
    @@all_projects
  end

  def total_pledges
    Pledge.all.select { |pled| pled.project == self }
  end

  def pledge_sum
    total_pledges.map(&:amount).sum
  end

  def goal_met?
    pledge_sum >= goal
  end

  def initialize(name, user, goal)
    @name = name
    @user = user
    @goal = goal
    self.class.all << self
  end

  def self.funded
    Project.all.select do |proj|
      Pledge.all.any? do  |ple|
        proj == ple.project
      end
    end
  end

  def self.most_baker
    all_pledges = Pledge.all.map(&:project)
    all_pledges.each_with_object(Hash.new(0)) { |e, tot| tot[e] += 1; }.max_by { |k, v| v }[0]
  end

  def self.no_pledges
    all - funded
  end

  def self.above_goal
    all.select(&:goal_met?)
  end
end
