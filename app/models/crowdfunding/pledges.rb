class Pledges
  attr_accessor :amount
  attr_reader :project, :user

  @@all = []

  def initialize(amount, project, user)
    @amount = amount
    @project = project
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end
  
end
