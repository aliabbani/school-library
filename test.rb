require './person.rb'
require './student.rb'
require './teacher.rb'
require './corrector.rb'
require './classroom.rb'
require './book.rb'
require './rental.rb'

# Make sure that when adding a student to a classroom it also sets the classroom for the student.
# ali = Student.new("Enginner", 28, "Ali")
# puts ali.name

# business = Classroom.new("business")
# puts business.label
# business.add_student(ali)
# puts business.students

# Make sure that when setting the classroom for a student it also adds it to the classrooms' students.
# ali.classroom 

# person = Person.new(28, "Ali")
# puts(person.parent_permission)
# puts(person.name)