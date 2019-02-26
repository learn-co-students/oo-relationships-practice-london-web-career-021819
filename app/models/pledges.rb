class Pledge
  attr_reader :user, :project, :amount

  @@all = []

  def self.all
    @@all
  end

    def initialize(user, project, amount)
      @user = user
      @project = project
      @amount = amount
      @@all << self
    end


  # def project
  # returns the project associated with a particular pledge
  # end

  # def user
  #   returns the user associated with a particular pledge
  # end

end
