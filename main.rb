require 'json'
require './person_module'
require './book_module'
require './rental_module'
require './data'
require './read_data'

class App
  include NewPeople
  include NewBook
  include NewRental
  include StoreData
  include ReadFiles

  def initialize
    @people = []
    @books = []
    @rentals = []
    # @fetched_persons_list = []
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
    # @fetched_persons_list << fetch_persons
    # puts @fetched_persons_list
    fetch_persons
    loop do
      @choose_list.each { |key, value| puts "#{key} - #{value}" }

      choose = gets.chomp.to_i
      if choose == 7
        all_persons(@people)
        all_books(@books)
        all_rentals(@rentals)
        puts 'You are amazing. Thank you for using this app!'
        break
      end

      choose_list_action(choose)
    end
  end

  def select_option
    puts 'Do you want to create a student (1) or a teacher (2)? [input the number]:'
    choose3 = gets.chomp.to_i
    create_student if choose3 == 1
    create_teacher if choose3 == 2
  end

  def choose_list_action(choose)
    case choose
    when 1
      list_books
    when 2
      list_people
    when 3
      select_option
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

def main
  app = App.new
  app.run
end

main
