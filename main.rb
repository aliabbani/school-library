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
    end

    def run
        choose_list
    end
    
    def choose_list
        puts "Welcome to School Library App!\n\n"
        puts "Please choose an option by entering a number"
        puts "1 - List all books"
        puts "2 - List all people"
        puts "3 - Create a person"
        puts "4 - Create a book"
        puts "5 - Create a rental"
        puts "6 - List all rentals for a given person id"
        puts "7 - Exit"

        choose = gets.chomp

        if choose == "2"
            puts "Hello you choose two!"
        end

        if choose == "2"
            puts "Hello you choose two!"
        end

        if choose == "3"
            puts "Do you want to create a student (1) or a teacher (2)? [input the number]:"
            choose_3 = gets.chomp
            if choose_3 == "1" || choose_3 == "2"
                print "Age :"
                age = gets.chomp
                print "Name: "
                name = gets.chomp
                print "Has parent permission? [Y/N]:"
                parent_permission = gets.chomp
                person = Person.new(age: age, name: name, parent_permission: parent_permission)
                @people << person
                puts "Person created successfully"
            end
        end
        # puts(@people.map {|p| p.name})
        # puts(@people.map {|p| p.age})
        # puts(@people.map {|p| p.parent_permission})
        # puts(@people)
    end
end

def main
    app = App.new()
    app.run()
end

main