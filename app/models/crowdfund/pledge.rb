class Pledge

attr_accessor :backer, :project, :amount
@@all = []

  def initialize(backer, project, amount)
    @backer = backer
    @project = project
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

end
