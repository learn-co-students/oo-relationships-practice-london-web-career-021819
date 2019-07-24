class Pledge

# belongs to users
# belongs to projects

  attr_accessor :amount, :user, :project

  @@all = []

  def initialize(amount, user, project)
    @amount = amount
    @user = user
    @project = project
    @@all << self
  end

  def self.all
    @@all
  end

end
