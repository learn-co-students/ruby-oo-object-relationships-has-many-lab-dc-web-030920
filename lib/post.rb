class Post

    attr_reader :title
    attr_accessor :author
    @@all = []

    def initialize (title)
        @title = title
        @@all << self
    end

    def author_name
        if self.author == nil
            return nil
        else 
            return self.author.name
        end
    end


    def self.all
        @@all
    end
end
