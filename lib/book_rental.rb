#Join class between book + person
class Book_Rental

    @@all = []
    attr_accessor :book, :person
    #attr_reader :date

    def initialize(book,person)
        @book = book
        @person = person 
        @@all << self
        book.rented_status = true
    end

    def self.all
        @@all
    end
    


end 