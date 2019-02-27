class Pledge
  @@all = []
  attr_reader :name, :user, :project, :amount

  def self.all
    @@all
  end

  def initialize(name, user, project, amount)
    @name = name
    @user = user
    @project = project
    @amount = amount
    self.class.all << self
  end

end
