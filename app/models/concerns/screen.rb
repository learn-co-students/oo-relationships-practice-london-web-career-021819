module Screen
  module TopLevelInit
    def initialize(title)
      @title = title
      self.class.all << self
    end
  end

  module PersonInit
    def initialize(name)
      @name = name
      self.class.all << self
    end
  end

  module Project
    def characters
      appearances.collect(&:character)
    end

    #TODO: add #actors

    private

    def appearances
      Appearance.all.select {|appearance| appearance.project == self}
    end
  end
end
