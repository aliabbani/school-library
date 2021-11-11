require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom:, age:, name: 'unknown', parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

# ali = Student.new("Enginner", 28, "Ali")
# puts ali.parent_permission
