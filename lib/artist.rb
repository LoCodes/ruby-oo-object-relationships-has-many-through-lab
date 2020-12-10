
# Artist
# #name
#   has a name 
# .all
#   knows about all artist instances 
# #songs
#   returns all songs associated with this Artist 
# #new_song
#   given a name and genre, creates a new song associated with that artist 
# #genres
#   has many genres, through songs 


require 'pry'

class Artist 

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        save
    end 

    def save 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def songs
        Song.all.select {|song| song.artist == self}
    end 


    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres 
        songs.collect {|song| song.genre}
    end 
end 
