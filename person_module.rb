require './student'
require './teacher'

module NewPeople
  def get_person_info(people = 'student')
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    if people == 'teacher'
      print 'Specialization:'
      specialization = gets.chomp
      puts 'Person created successfully'
      [specialization, age, name]
    else
      print 'Has parent permission? [Y/N]:'
      gets.chomp
      puts 'Person created successfully'
      [age, name]
    end
  end

  def create_student
    age, name = get_person_info
    student = Student.new('Microverse', age, name)
    @people << student
  end

  def create_teacher
    specialization, age, name = get_person_info('teacher')
    teacher = Teacher.new(specialization, age, name)
    @people << teacher
  end

  def list_people
    @people.each { |p| puts "[#{p.class}] Name: #{p.name}, Age: #{p.age}, ID: #{p.id}" }
  end

  private :create_student, :create_teacher
end
