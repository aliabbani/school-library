module StoreData
  def all_persons(persons)
    person_json = []
    if persons.empty?
      puts 'No people to show'
    else
      persons.each do |obj|
        new_person = JSON.generate(obj)
        person_json << new_person
      end
    end
    store_person(person_json)
  end

  def store_person(json_data)
    if File.exist?('person.json')
      File.write('person.json', json_data.join(", \n"), mode: 'a')
    else
      File.new('person.json', 'w+')
      File.write('person.json', json_data.join(", \n"))
    end
  end

  def all_books(books)
    books_json = []
    if books.empty?
      puts 'No books to show'
    else
      books.each do |obj|
        new_obj = JSON.generate(obj)
        books_json << new_obj
      end
      store_book(books_json)
    end
  end

  def store_book(json_data)
    if File.exist?('books.json')
      File.write('books.json', json_data.join(", \n"), mode: 'a')
    else
      File.new('books.json', 'w+')
      File.write('books.json', json_data.join(", \n"))
    end
  end

  def all_rentals(rentals)
    rentals_json = []
    if rentals.empty?
      puts 'No rentals to show'
    else
      rentals.each do |obj|
        new_rental = JSON.generate(obj)
        rentals_json << new_rental
      end
      store_rentals(rentals_json)
    end
  end

  def store_rentals(json_data)
    if File.exist?('rentals.json')
      File.write('rentals.json', json_data.join(", \n"), mode: 'a')
    else
      File.new('rentals.json', 'w+')
      File.write('rentals.json', json_data.join(", \n"))
    end
  end
end
