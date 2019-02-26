class Location

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
      @@all
  end



  def self.least_clients
    data = Client.all.map {|c| c.trainer }.map do |t| t.contracts.map{ |contract| contract.location.name }.uniq
  end
    data.flatten.count
    numbers = Location.all.map { |l| data.flatten.count(l.name) }
    Location.all[numbers.index(numbers.min)]
  end

  def method_name

  end

end
