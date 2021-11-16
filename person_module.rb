require './student'
require './teacher'

module NewPeople
  def get_student_info
    @type = type
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'Has parent permission? [Y/N]:'
    gets.chomp
    [age, name]
  end

  def create_student
    age, name = get_student_info
    student = Student.new('Microverse', age, name)
    @people << student
    puts 'Person created successfully'
  end

  def get_teacher_info
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'Specialization:'
    specialization = gets.chomp
    puts 'Person created successfully'
    [specialization, age, name]
  end

  def create_teacher
    specialization, age, name = get_teacher_info
    teacher = Teacher.new(specialization, age, name)
    @people << teacher
  end

  def list_people
    @people.each { |p| puts "[#{p.class}] Name: #{p.name}, Age: #{p.age}, ID: #{p.id}" }
  end

  private :create_student, :create_teacher
end
