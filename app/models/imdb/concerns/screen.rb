module Screen

  attr_reader :title

  def initialize(title)
    @title = title
    self.class.all << self
  end

end
