class Actor
    include BasicMethods
    attr_reader :name
    @@actors = []

    def self.all
        @@actors
    end

    def self.most_characters
        n_characters = 0
        name_of_actor = nil
        all.each do |actor|
            i = Character.all.count{|character| character.actor == actor}
            if i > n_characters
                n_characters = i
                name_of_actor = actor
            end
        end
        name_of_actor
    end
end