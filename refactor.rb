require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

module Refactor
    def list_books
        @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
      end
    
      def list_people
        @people.each { |p| puts "[#{p.class}] Name: #{p.name}, Age: #{p.age}, ID: #{p.id}" }
      end
    
      def create_student
        print 'Age:'
        age = gets.chomp
        print 'Name:'
        name = gets.chomp
        print 'Has parent permission? [Y/N]:'
        gets.chomp
        student = Student.new('Microverse', age, name)
        @people << student
        puts 'Person created successfully'
      end
    
      def create_teacher
        print 'Age:'
        age = gets.chomp
        print 'Name:'
        name = gets.chomp
        print 'Specialization:'
        specialization = gets.chomp
        teacher = Teacher.new(specialization, age, name)
        @people << teacher
        puts 'Person created successfully'
      end
    
      def create_book
        print 'Title:'
        title = gets.chomp
        print 'Author:'
        author = gets.chomp
        book = Book.new(title: title, author: author)
        @books << book
        puts 'Book created successfully'
      end
    
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
    
      def exit
        print 'You are amazing. Thank you for using this app!'
      end

      def choose_list_action(choose)
        case choose
        when 1
          list_books
        when 2
          list_people
        when 3
          puts 'Do you want to create a student (1) or a teacher (2)? [input the number]:'
          choose3 = gets.chomp.to_i
          create_student if choose3 == 1
          create_teacher if choose3 == 2
        when 4
          create_book
        when 5
          create_rentals
        when 6
          list_rentals
        else
          puts 'Please choose from the list'
        end
      end
end