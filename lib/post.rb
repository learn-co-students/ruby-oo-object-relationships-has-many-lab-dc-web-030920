class Post

    attr_accessor :title, :author
    @@all = []
    def initialize(post)
        @title = post
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        author.name if author
    end
end