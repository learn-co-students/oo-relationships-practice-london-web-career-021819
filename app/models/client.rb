class Client
    include BasicMethods
    attr_reader :name, :trainer
    @@all = []

    def initialize(name, trainer = "Unassigned")
        @trainer = trainer
        super
    end
    
    def assign_trainer(trainer)
        @trainer = trainer
    end

    def self.all
        @@all
    end

end


# client -hm-> locations  **
# trainer -hm-> locations ##
# location -hm-> trainers ##
# location -hm-> clients **
# trainer -hm-> clients
# client -1-> trainer 
