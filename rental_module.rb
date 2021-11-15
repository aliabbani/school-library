require './rental'
require './classroom'

module NewRental
  def create_rentals
    print "Select a book from the folowing list by number\n"
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }
    book_index = gets.chomp.to_i
    print "Select a person from the folowing list by number (not id)\n"
    @people.each_with_index { |p, index| puts "#{index}) [#{p.class}] Name: #{p.name}, Age: #{p.age}, ID: #{p.id}" }
    person_index = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp
    rental = Rental.new(date, @books[book_index], @people[person_index])
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
