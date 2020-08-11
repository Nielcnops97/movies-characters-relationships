require 'pry'
require_relative './actor'
require_relative './movie'
require_relative './movie_character'

brad = Actor.new("Brad Pitt", 50)
leo = Actor.new("Leonardo Dicaprio", 45)
angelina = Actor.new("Angelina Jolie", 40)

titanic = Movie.new("Titanic", 8.8)
smith = Movie.new("Mr. & Mrs. Smith", 6.5)
hollywood = Movie.new("Once Upon a Time in Hollywood", 7.4)

mrs_smith = MovieCharacter.new(angelina, smith, "Mrs. Smith")
mr_smith = MovieCharacter.new(brad, smith, "Mr. Smith")
jack = MovieCharacter.new(leo, titanic, "Jack")
cliff = MovieCharacter.new(brad, hollywood, "Cliff")
rick = MovieCharacter.new(leo, hollywood, "Rick")

binding.pry