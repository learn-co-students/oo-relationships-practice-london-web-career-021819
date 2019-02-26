class Trainer

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
      @@all
  end

  def contracts
    Contract.all.select {|contracts| contracts.trainer == self}
  end


  def locations
    contracts.map {|contract| contract.location}.uniq
  end




end
