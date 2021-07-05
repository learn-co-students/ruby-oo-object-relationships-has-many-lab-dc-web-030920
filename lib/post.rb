require 'pry'
class Post

    attr_accessor :author 

    @@all = []
    def initialize(title)
        @title = title
        @@all << self
        @author = author
    end

    def self.all
        @@all
    end

    def title
        @title
    end


    def author_name
           

            if author
            author.name
            end

    end
    
end

