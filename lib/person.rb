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
        def check_books
            books = []
            Book_Rental.all.each do |rental|
              if  rental.person == self && rental.book.rented_status
                 books << rental.book
                 
              end
                
            end
           books
        end

        def checkout_book(book)

            
             book.rented_status = false
                   
         

        end
            



    end