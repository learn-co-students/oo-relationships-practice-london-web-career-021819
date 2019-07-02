class Project
  @@all = []
  attr_reader :name, :user_founder
  attr_accessor :pledge_amount

  def self.all
    @@all
  end

  def initialize(name, pledge_goal_amount, user_founder)
    @name = name
    @pledge_amount = pledge_goal_amount
    @user_founder = user_founder
    self.class.all << self
  end


  #returns all projects which have no pledges yet
  def self.no_pledges
    projects_with_pledges = Pledge.all.map{|pledge| pledge.project}.uniq
    self.all - projects_with_pledges
  end

  #return the total pledge submitted for a particular project
  def pledge_submitted
    sum = 0
    Pledge.all.each do |pledge|
      sum += pledge.amount if pledge.project == self
    end
    sum
  end

  #returns all projects which have met or exceeded their pledge goal
  def self.above_goal
    self.all.select{|project| project.pledge_submitted > project.pledge_amount}
  end

  #returns the project's backers
  def backers
    backers = []
    Pledge.all.each do |pledge|
      backers << pledge.user if pledge.project == self
    end
    backers
  end

  #returns the project with the highest number of backers
  def self.most_backers
    max_backers = 0
    max_project = []
    self.all.each do |project|
      if max_backers < project.backers.count
        max_project.clear
        max_project << project
        max_backers = project.backers.count
      elsif max_backers == project.backers.count
        max_project << project
      end
    end
    max_project
  end

end
