class Author

    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.select do |post_instance|
            @@all << post_instance
        end
        # @@all << stuff
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    def self.post_count
        Post.all.count
        # 3
    end
end