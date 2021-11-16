require './rental'
require './classroom'

module NewRental
  def extract_books
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }
    gets.chomp.to_i
  end

  def extract_persons
    @people.each_with_index { |p, index| puts "#{index}) [#{p.class}] Name: #{p.name}, Age: #{p.age}, ID: #{p.id}" }
    gets.chomp.to_i
  end

  def extract_rental_info
    print "Select a book from the folowing list by number\n"
    book_selected = extract_books
    print "Select a person from the folowing list by number (not id)\n"
    person_rented = extract_persons
    [book_selected, person_rented]
  end

  def create_rentals
    book_selected, person_rented = extract_rental_info
    print 'Date: '
    date = gets.chomp
    rental = Rental.new(date, @books[book_selected], @people[person_rented])
    @rentals << rental
    puts 'Rental created successfully'
  end

  def list_rentals
    puts 'ID of person:'
    id = gets.chomp
    puts 'Rentals:'
    rentals = @rentals.select { |rental| rental.person.id == id.to_i }
    rentals.each { |rent| puts "Date: #{rent.date}, Book #{rent.book.title} by #{rent.book.author}" }
  end

  private :create_rentals
end
