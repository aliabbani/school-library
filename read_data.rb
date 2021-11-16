module ReadFiles
  def fetch_persons
    File.read('person.json').split if File.exist?('person.json')
  end

  def fetch_books
    File.read('books.json').split if File.exist?('books.json')
  end

  def fetch_rentals
    File.read('rentals.json').split if File.exist?('rentals.json')
  end
end
