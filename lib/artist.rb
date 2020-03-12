require 'pry'

class Artist
    attr_accessor :name, :songs, :artist

    def initialize(name)
        @name = name
        @songs = []
        @artist = artist
    end

    def add_song(song)
        song.artist = self
    end


    def songs    
        Song.all.select{|s|  s.artist = self}   
    end

    def add_song_by_name(name)  
        Song.new(name)
    end

    def self.song_count
        Song.all.length
    end


   

end
