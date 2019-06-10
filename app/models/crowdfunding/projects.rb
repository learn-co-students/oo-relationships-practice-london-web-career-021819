class Projects
  attr_reader :pledge_goal

  @@all = []

  def initialize(pledge_goal)
    @pledge_goal = pledge_goal
    @@all << self
  end

  def self.all
    @@all
  end

  def all_pledges
    Pledges.all.select{|pledges| pledges.project == self}
  end

  def self.all_pledged_projects
    (Pledges.all.map do |pledge|
      pledge.project
    end).uniq
  end

  def self.no_pledges
    self.all.select{|pledge| !self.all_pledged_projects.include? pledge}
  end


  def self.above_goal
    above_projects = []
    self.all.each do |project|
      total = 0
      Pledges.all.each do |pledge|
        if pledge.project == project
          total += pledge.amount
        end
      end
      if total >= project.pledge_goal
        above_projects << project
      end
    end
    above_projects
  end

  #returns the project with the highest number of backers
  def self.most_backers
    max = 0
    highest_proj = nil
    self.all.each do |project|
      count = 0
      Pledges.all.each do |pledge|
        if pledge.project == project
          count += 1
        end
      end
      if count > max
        highest_proj = project
      end
    end
    highest_proj
  end

end
