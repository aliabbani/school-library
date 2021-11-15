require './student'
require './teacher'

module NewPeople
  def create_student
    input_obj = { 'Age: ' => '', 'Name: ' => '', 'Has Parent Permission: ' => '' }
    input_obj.each do |key, _value|
      print key
      _value = gets.chomp
    end
    student = Student.new('Microverse', input_obj[0], input_obj[1])
    @people << student
    puts 'Person created successfully'
  end

  def create_teacher
    input_obj = { 'Age: ' => '', 'Name: ' => '', 'Specialization: ' => '' }
    input_obj.each do |key, _value|
      print key
      _value = gets.chomp
    end
    teacher = Teacher.new(input_obj[2], input_obj[0], input_obj[1])
    @people << teacher
    puts 'Person created successfully'
  end

  def list_people
    @people.each { |p| puts "[#{p.class}] Name: #{p.name}, Age: #{p.age}, ID: #{p.id}" }
  end

  private :create_student, :create_teacher
end
