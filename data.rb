module StoreData
  def all_persons(persons, state)
    if state
      person_json = []
      if persons.empty?
        puts 'No people to show'
      else
        persons.each do |obj|
          new_person = JSON.generate(obj)
          store_person(new_person)
        end
      end
    else
      return 'No changes made to Persons'
    end
  end

  def store_person(json_data)
    if File.exist?('person.json')
      File.write('person.json', "&&#{json_data}", mode: 'a')
    elsif json_data
      File.new('person.json', 'w+')
      File.write('person.json', json_data)
    else
      puts 'No data for person stored'
    end
  end

  def all_books(books, state)
    if state
      if books.empty?
        puts 'No books to show'
      else
        books.each do |obj|
          new_obj = JSON.generate(obj)
          store_book(new_obj)
        end
      end
    else
      puts 'No changes made to books'
    end
  end

  def store_book(json_data)
    if File.exist?('books.json')
      File.write('books.json', "&&#{json_data}", mode: 'a')
    elsif json_data
      File.new('books.json', 'w+')
      File.write('books.json', json_data)
    else
      puts 'No data for books stored'
    end
  end

  def all_rentals(rentals, state)
    if state
      if rentals.empty?
        puts 'No rentals to show'
      else
        rentals.each do |obj|
          new_rental = JSON.generate(obj)
          store_rentals(new_rental)
        end
      end
    else 
      puts 'No changes made to rentals'
    end
  end

  def store_rentals(json_data)
    if File.exist?('rentals.json')
      File.write('rentals.json', "&&#{json_data}", mode: 'a')
    elsif json_data
      File.new('rentals.json', 'w+')
      File.write('rentals.json', json_data)
    else 
      puts 'No data for rentals stored'  
    end
  end
end
