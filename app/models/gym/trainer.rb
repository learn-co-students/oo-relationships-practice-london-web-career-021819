class Trainer
  include Saveable

  attr_reader :name

  @@trainers = []

  def self.all
    @@trainers
  end

  def self.most_clients
    all.max_by {|trainer| trainer.clients.count}
  end

  def clients
    Client.all.select {|client| client.trainer == self}
  end

  def sign_contract(location)
    Contract.new(self, location)
  end

  def locations
    contracts.collect {|contract| contract.location}
  end

  private

  def contracts
    Contract.all.select {|contract| contract.trainer == self}
  end
end
