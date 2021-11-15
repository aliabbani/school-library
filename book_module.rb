require './book'

module NewBook
  def create_book
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp
    book = Book.new(title: title, author: author)
    @books << book
    puts 'Book created successfully'
  end

  def list_books
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  private :create_book
end
