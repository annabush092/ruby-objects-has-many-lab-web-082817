class Author
  attr_accessor :name, :posts

  @@post_count
  @@all_authors = []

  def self.all_authors
    @@all_authors
  end

  def initialize(name)
    @name = name
    @posts = []
    @@all_authors << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@post_count = 0
    all_authors.each do |author|
      @@post_count += author.posts.length
    end
    @@post_count
  end
end
