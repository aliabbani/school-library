module StoreData
  def all_persons(persons)
    person_json = []
    if persons.empty?
      puts 'Nothing to show'
    else
    puts "Person List"
    persons.each do |obj|
      new_person = JSON.generate(obj)
      person_json << new_person
    end
    end
    store_person(person_json)
  end

  def store_person(json_data)
    if File.exists?('person.json')
      File.write('person.json', json_data.join("&&"),  mode: "a")
    else
      File.new('person.json', 'w+')
      File.write("person.json", json_data.join("&&"))
    end
  end

  def all_books(books)
    books_json = []
    if books.empty?
      puts 'Nothing to show'
    else
    puts "Books List"
    books.each do |obj|
      new_obj = JSON.generate(obj)
      books_json << new_obj
    end
    puts books_json
    end
  end

  def all_rentals(rentals)
    rentals_json = []
    if rentals.empty?
      puts 'Nothing to show'
    else
    puts "Rental List"
    rentals.each do [obj]
      new_rental = JSON.generate(obj)
      rentals_json << new_rental
    end
    puts rentals_json
    end
  end

end
