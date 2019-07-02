class User
  @@all = []
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def create_project(name, goal_amount)
    Project.new(name, goal_amount, self)
  end

  def back_project(pledge_name, project, amount)
    Pledge.new(pledge_name, self, project, amount)
  end

  #returns all the pledges made by a user
  def all_pledges
    Pledge.all.select{|pledge| pledge.user == self}
  end

  #returns all the projects backed by a user
  def all_projects
    all_pledges.map{|pledge| pledge.project}
  end

  #returns the highest pledge made by a user
  def highest_pledge_personal
    all_pledges.map{|pledge| pledge.amount}.max
  end

  #returns the user who has made the highest pledge
  def self.highest_pledge
    #max_pledge_amount = Pledge.all.map{|pledge| pledge.amount}.max
    # highest_pledge_user = self.all.select {|user| user.highest_personal_pledge == max_pledge_amount}
    max_pledge_amount = Pledge.all.max_by{|pledge| pledge.amount}.user
  end

 #  def self.highest_pledge
 #   highest_amount = 0
 #   highest_user = nil
 #   Pledges.all.each do |pledge|
 #     if pledge.amount > highest_amount
 #       highest_amount = pledge.amount
 #       highest_user = pledge.user
 #     end
 #   end
 #   highest_user
 # end

  #returns all users who have pledged to multiple projects
  def self.multi_pledger
    self.all.select{|user| user.all_pledges.length > 1}
  end

  #returns all users who have created a project
  def self.project_creator
    founders = Project.all.map{|project| project.user_founder}.uniq
  end

end
