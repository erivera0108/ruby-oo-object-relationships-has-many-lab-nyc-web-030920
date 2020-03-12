class Author
    attr_accessor :name 

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select do |posts|
            posts.author = self
        end
    end

    def add_post(post)
        post.author == self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end
end 