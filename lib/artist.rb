require 'pry'
class Artist

    attr_accessor :name
    # attr_reader :songs
   
    @@all = []

    def initialize(name)
        @name = name
        # @songs = []
        @@all << self
    end
   
    def self.all
        @@all
    end
    def songs 
        Song.all.select { |song_instance|
        @@all << song_instance }
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.song_count
        # Song.all.select {|song_instance| song_instance == self}.length
        num = Song.all
        return num.length
        # binding.pry
    end
end