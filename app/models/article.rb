class Article
attr_reader :author, :magazine, :title
@@all = []

    def initialize(author,magazine,title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.author(title)
        title.author
    end

    def self.magazines(title)
        title.magazine
    end

end
