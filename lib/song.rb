require 'pry'
class Song

    attr_accessor :song, :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name

        if artist
        artist.name
        end
        
    end
    

end
