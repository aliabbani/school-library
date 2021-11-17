module ReadFiles
  def read_stored_files
    load_person_data
    load_book_data
    load_rental_data
  end

  # Person loading method starts
  def load_person_data
    people_stored = fetch_persons
    parse_persons(people_stored)
  end

  def fetch_persons
    ruby = []
    data = File.read('person.json') if File.exist?('person.json')
    if !data
      nil
    else
    data.split("&&").map {|each| ruby << each}
    end
    ruby
  end

  def parse_persons(arr)
    arr.each do |each|
      a = JSON.parse(each)
      load_persons(a)
    end
  end

  def load_persons(obj)
      if obj["classroom"]
        student = Student.new('Microverse', obj["age"], obj["name"])
        student.id = obj["id"]
        @people << student
      else
        teacher = Teacher.new(obj["specialization"], obj["age"], obj["name"])
        teacher.id = obj["id"]
        @people << teacher
      end
  end
# Person loading mthod ends

# Books loading methods
  def load_book_data
    book_stored = fetch_books
    parse_books(book_stored)
  end

  def fetch_books
    ruby = []
    data = File.read('books.json') if File.exist?('books.json')
    if !data
      nil
    else
    data.split("&&").map {|each| ruby << each}
    end
    ruby
  end

  def parse_books(arr)
    arr.each do |each|
      a = JSON.parse(each)
      load_books(a)
    end
  end

  def load_books(obj)
    book = Book.new(obj["title"], obj["author"])
    @books << book
  end

  # Loading rental method

  def load_rental_data 
    rental_stored = fetch_rentals
    parse_rental(rental_stored)
  end

end
