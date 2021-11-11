require './person.rb'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class App
    # def initialize
    #     @books = []
    #     @people = []
    #     @rentals = []
    # end

    
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
        puts "#{choose}"
    end

    def run
        choose_list 
    end
end

def main
    app = App.new()
    app.run()
end

main