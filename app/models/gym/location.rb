class Location
  include Saveable

  attr_reader :name

  @@locations = []

  def self.all
    @@locations
  end

  def self.least_clients
    all.min_by {|location| location.clients.count}
  end

  def trainers
    contracts.collect {|contract| contract.trainer}
  end

  def clients
    trainers.collect {|trainer| trainer.clients}.flatten
  end

  private

  def contracts
    Contract.all.select {|contract| contract.location == self}
  end
end
