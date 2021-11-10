class Rental
    attr_reader :book, :person
    attr_accessor :date

    def initialize(date, book, person)
        @date = date
    end

    @book = book
    book.rentals << self

    @person = person
    person.rentals << self
end