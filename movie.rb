class Movie
    attr_reader :title, :rating

    @@all = []

    def initialize(title, rating)
        @title = title
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    # Movie#characters should return an array of Movie Character objects 
        # where the movie matches the movie instance
    def characters
        MovieCharacter.all.select do |character|
            character.movie == self
        end
    end

    # Movie#actors should return an array of Actor objects where the actor was in that particular movie
    def actors
        characters.map do |character|
            character.actor
        end
    end

    def self.find_movie_by_actor(name)
        found_character = MovieCharacter.all.find do |character|
            character.actor.name == name
        end
        found_character.movie.title
    end
end