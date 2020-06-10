require "pry"
require_relative 'book_rental'
require_relative 'person'
require_relative 'book'
puts "test"

mat = Person.new('mat')
book1 = Book.new('book1',"crime",1999)
book2 = Book.new('book2',"romance",2010)
book_rental1 = Book_Rental.new(book1,mat)

binding.pry