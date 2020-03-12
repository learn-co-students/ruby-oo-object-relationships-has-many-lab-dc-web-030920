class Author
@@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.find_all {|p| p.author == self }
    end

    def add_post (post)
        post.author = self 
    end

    def add_post_by_title(title)
        title = Post.new(title)
        add_post(title)
    end

    def self.post_count
        total = 0 
        @@all.each {|a| total += a.posts.length}
        total
    end    


end
