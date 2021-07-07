class Artist

    attr_accessor :name
    @@songs = []

    def initialize(name)
        @name = name 
       # @songs = [] 
    end 



    def add_song(song)
       # @songs << song 
        song.artist = self 
    end 
    
    def songs 
        #@@songs 
        #@songs 
        Song.all.select do |song| song.artist == self end
    end 

    def self.all
        @@songs 
    end 


    def add_song_by_name(song_name)
        Song.new(song_name, self)
    end 

    def self.song_count 
        Song.all.count 
    end 

end
