class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category = "Genre")
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    @@all.map {|v| v.author == self}
  end

  def self.find_by_name(name)
    @@all.find(name)
  end

  def article_titles
    Article.map {|v| v.title == self}
  end

  def contributing_authors
    count = 0
    authors_of_note = []
    Author.map do {|v| v.magazine == self}
      count += 1
      if count >= 2
        authors_of_note.unshift(v)
      end
      authors_of_note
    end

end
