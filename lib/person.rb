class Person
    
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    # add book to this person 
        def add_book(book)
            if book.rented_status == false 
                return Book_Rental.new(book,self)
            else 
               return "Book is already rented"
            end

        end 
    
    # check all the books for this person 



end