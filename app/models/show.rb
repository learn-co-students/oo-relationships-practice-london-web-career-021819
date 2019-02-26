class Show
    include BasicMethods
    attr_reader :name
    @@shows = []

    def self.all
        @@shows
    end

    def self.on_the_big_screen(movie)
        all.select{|show| show.name == movie.name}
    end
end