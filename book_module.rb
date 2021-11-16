require './book'

module NewBook
  def get_book_info
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    puts 'Book created successfully'
    [title, author]
  end

  def create_book
    title, author = get_book_info
    book = Book.new(title: title, author: author)
    @books << book
  end

  def list_books
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  private :create_book
end
