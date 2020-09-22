class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def articles
    Articles.all.select {|v| v.author == self }
  end

  def magazines
    articles.map {|v| v.magazine == self }.uniq
  end 

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

end
