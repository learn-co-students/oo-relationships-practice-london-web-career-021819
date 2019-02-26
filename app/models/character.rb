class Character
    include BasicMethods
    attr_reader :name, :actor
    @@characters = []

    def initialize(name, actor)
        @actor = actor
        super        
    end

    def self.all
        @@characters
    end

    def self.most_appearances
        numb_of_shows_movies = 0
        pop_character = nil
        all.each do |character|
            i =ShowChar.all.count{|show_char| show_char.char == character}
            if i > numb_of_shows_movies
                numb_of_shows_movies = i
                pop_character = character
            end
        end
        pop_character
    end

end