
# Song
# #new
#   initializes with a name, an artist, and a genre
# .all
#   knows about all song instances 
# #genre
#   belongs to a genre 
# #artist
#   belongs to a artist 
class Song 

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre
        save
    end 

    def save 
        @@all << self 
    end 

    def self.all
        @@all 
    end 
end 
