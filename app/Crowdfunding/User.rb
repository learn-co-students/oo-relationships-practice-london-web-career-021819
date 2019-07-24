class User

# user has many pledges
# user has many projects, through pledges

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.highest_pledge
    Pledge.all.max_by {|x| x.amount}.user
  end

  def pledge_count
    Pledge.all.select {|x| x.user == self}.count
  end

  def self.multi_pledger
    User.all.select {|x| x.pledge_count > 1}
  end

  def self.project_creator
    User.all.map do |x|
      Project.all.map {|x| x.creator}.uniq.include?(self)
    end
  end

end
