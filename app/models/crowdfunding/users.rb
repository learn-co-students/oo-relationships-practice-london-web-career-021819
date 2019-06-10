class Users
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.highest_pledge
    sorted = Pledges.all.sort{|pledge| pledge.amount}
    sorted.last.user
  end

  def self.multi_pledger
    user_hash = {}
    multi_pledgers = []
    Pledges.all.select do |pledge|
     user_hash[pledge.user] ||= 0
     user_hash[pledge.user] += 1
     if user_hash[pledge.user] > 1
       multi_pledgers << pledge.user
     end
    end
    multi_pledgers
  end

  def self.project_creator
    Pledges.all.map{|pledge| pledge.user}.uniq
  end

end
