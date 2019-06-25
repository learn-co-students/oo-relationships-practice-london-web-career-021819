# Pledge class 
class Pledge

  attr_reader :user, :project, :amount

  @@all_pledges = []

  def self.all
    @@all_pledges
  end

  def initialize(user, project, amount)
    @user = user
    @project = project
    @amount = amount
    self.class.all << self
  end
  
end