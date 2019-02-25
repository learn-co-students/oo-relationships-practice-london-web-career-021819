module ShowBiz
  # common initialize
  module Initializer
    def initialize(name, actor)
      @name = name
      @actor = actor
      self.class.all << self
    end
  end
end
