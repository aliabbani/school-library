require './person'
require './student'
require './teacher'
require './corrector'
require './classroom'
require './book'
require './rental'

# Make sure that when adding a student to a classroom it also sets the classroom for the student.
# ali = Student.new("Enginner", 28, "Ali")
# puts ali.name

# business = Classroom.new("business")
# puts business.label
# business.add_student(ali)
# puts business.students

# Make sure that when setting the classroom for a student it also adds it to the classrooms' students.
# ali.classroom

# ali = Person.new(28, "Ali")
# lara = Person.new(26, "Lara")
# rami = Student.new("Enginner", 32, "Rami")
# puts(rami.classroom)

# book_1 = Book.new("Algorithm", "William B")
# book_2 = Book.new("Football Management", "Alex Ferguson")
# puts(book_1.title)
# puts(book_2.author)

# rental_1 = Rental.new("2018-10-21", book_1, ali)
# rental_2 = Rental.new("2021-10-21", book_2, ali)
# puts(rental_1.date)
# puts(rental_1.book)
# puts(rental_2.person)

# puts(ali.rentals.count)
# puts(lara.rentals.count)
# puts ali.rentals.map {|rent| rent.date}
# puts book_1.rentals.count
# puts book_2.rentals.count
# puts book_2.rentals.map {|rent| rent.person.name}

# rental_3 = Rental.new("2021-08-21", book_2, rami)
# rental_4 = Rental.new("2021-07-21", book_1, lara)

# puts rami.rentals.count
# puts lara.rentals.count
# puts rami.rentals.map{|rent| rent.date}
# puts book_1.rentals.count
# puts book_1.rentals.map{|rent| rent.person.name}
