class Book
    
    @@all = []
    attr_reader :title, :genre, :year

    def initialize(title,genre,year)
        @title,@genre,@year = title,genre,year
        @@all << self
    end

    def self.all
        @@all
    end

end