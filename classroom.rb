class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end

# business = Classroom.new("business")
# puts business.label
# business.add_student(ali)
# puts business.students
