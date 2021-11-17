module ReadFiles
  def read_stored_files
    load_person_data
    laod_book_data
  end

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
      puts "format #{a.class}"
    end
  end

  def load_persons(obj)
      if obj["classroom"]
        student = Student.new('Microverse', obj["age"], obj["name"])
        @people << student
      else
        teacher = Teacher.new(obj["specialization"], obj["age"], obj["name"])
        @people << teacher
      end
    puts @people
  end

end
