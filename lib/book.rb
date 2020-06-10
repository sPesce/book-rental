class Book
    
    @@all = []
    attr_reader :title, :genre, :year
    attr_accessor :rented_status

    def initialize(title,genre,year)
        @title,@genre,@year = title,genre,year
        @rented_status = false 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_rented
        @@all.select do  |book|
              book.rented_status   
        end
    end 

end