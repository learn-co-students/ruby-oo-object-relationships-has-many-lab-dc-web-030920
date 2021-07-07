require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def songs 
        Song.all.find_all{|s|s.artist==self}
    end 

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_title)
        song_title = Song.new(song_title)
        add_song(song_title)
    end

    def self.song_count
        Song.all.count
    end



end 