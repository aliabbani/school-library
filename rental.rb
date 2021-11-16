class Rental
  attr_reader :book, :person
  attr_accessor :date

  def initialize(date, book, person)
    @date = date

    @book = book
    book.rentals << self

    @person = person
    person.rentals << self
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      "date" => @date,
      "book" => @book,
      "name" => @person
  }.to_json
  end

end
