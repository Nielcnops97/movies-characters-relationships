class Actor
    attr_reader :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        MovieCharacter.all.select do |character|
            character.actor == self
        end
    end

    def movies
        characters.map do |character|
            character.movie
        end
    end

    # def ratings
    #     movies.map do |movie|
    #         movie.rating
    #     end
    # end

    def average_ratings
        movies.reduce(0) do |sum, movie|
            sum + movie.rating
        end / movies.length
    end

    def self.average_age
        all.reduce(0) do |sum, actor|
            sum + actor.age
        end / all.length
    end
end