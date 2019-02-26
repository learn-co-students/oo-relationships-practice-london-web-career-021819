class Movie
    include BasicMethods
    attr_reader :name
    @@movies = []

    def self.all
        @@movies
    end

    def self.most_actors
        movie_with_most = nil
        num_of_actors = 0
        all.each do |movie|
            movchars = MovieChar.all.select{|movchar| movchar.movie == movie}
            if movchars.length > num_of_actors
                num_of_actors = movchars.length
                movie_with_most = movie
            end
        end
        movie_with_most
    end
end