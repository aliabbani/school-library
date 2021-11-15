# require './person'
# require './student'
# require './teacher'
# require './classroom'
# require './book'
# require './rental'
require './refactor'

class App
include Refactor
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
      @choose_list.each { |key, value| puts "#{key} - #{value}" }

      choose = gets.chomp.to_i
      if choose == 7
        # print 'You are amazing. Thank you for using this app!'
        exit
        break
      end

      choose_list_action(choose)
    end
  end
end

def main
  app = App.new
  app.run
end

main
