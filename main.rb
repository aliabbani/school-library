require './person.rb'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class App
    def initialize
        @people = []
        @books = []
        @rentals = []
        @choose_list = {
            '1' => 'List all books',
            '2' => 'List all people',
            '3' => 'Create a person',
            '4' => 'Create a book',
            '5' => 'Create a rental',
            '6' => 'List all rentals for a given person id',
            '7' => 'Exit'
        }
    end

    def run
        puts "Welcome to School Library App!\n\n"
        loop do
        @choose_list.each do |key, value|
            puts "#{key} - #{value}"
        end
        
        choose = gets.chomp.to_i
        if choose == 7
            print "You are amazing. Thank you for using this app!"
            break
        end

        choose_list choose
        end
        # choose_list
    end

    def choose_list choose
        if choose == 1
            list_books
        elsif choose == 2
            list_people
        elsif choose == 3
            create_person
        elsif choose == 4
            create_book
        elsif choose == 5
            create_rentals
        elsif choose == 6
            list_rentals
        else choose > 8
            puts "Please choose from the list"
        end
    end

    def list_books
        @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}"}
    end

    def list_people
        # puts "Hello we will list all people!"
        @people.each { |p| puts "[#{p.class}] Name: #{p.name}, Age: #{p.age}, ID: #{p.id}"}
    end

    def create_person
        puts "Do you want to create a student (1) or a teacher (2)? [input the number]:"
        choose_3 = gets.chomp
        if choose_3 == "1" 
            print "Age:"
            age = gets.chomp
            print "Name:"
            name = gets.chomp
            print "Has parent permission? [Y/N]:"
            parent_permission = gets.chomp
            student = Student.new('Microverse', age, name)
            @people << student
            puts "Person created successfully"
        elsif choose_3 == "2"
            print "Age:"
            age = gets.chomp
            print "Name:"
            name = gets.chomp
            print "Specialization:"
            specialization = gets.chomp
            teacher = Teacher.new(specialization, age, name)
            @people << teacher
            puts "Person created successfully"
        end
    end

    def create_book
        print "Title:"
        title = gets.chomp
        print "Author:"
        author = gets.chomp
        book = Book.new(title: title, author: author)
        @books << book
        puts "Book created successfully"
    end

    def create_rentals
        print "Select a book from the folowing list by number\n"
        @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}"}
        book_index = gets.chomp.to_i
        print "Select a person from the folowing list by number (not id)\n"
        @people.each_with_index { |p, index| puts "#{index}) [#{p.class}] Name: #{p.name}, Age: #{p.age}, ID: #{p.id}"}
        person_index = gets.chomp.to_i
        print "Date: "
        date = gets.chomp
        rental = Rental.new(date, @books[book_index], @people[person_index])
        @rentals << rental
        puts "Rental created successfully"
    end
    
    def exit
        print "Thank you for using this app!"
    end
end

def main
    app = App.new()
    app.run()
end

main