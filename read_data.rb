module ReadFiles
  def fetch_persons
    if File.exists?('person.json')
      file_data = File.read("person.json").split
    end
  end
end
