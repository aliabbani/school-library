require './corrector'

class Person
  attr_accessor :name, :age, :parent_permission, :rentals
  attr_reader :id, :corrector

  DEFAULT_BOOL = true

  def initialize(age, name = 'unknown', parent_permission = DEFAULT_BOOL)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def of_age?
    age >= 18
  end

  def can_use_services?
    of_age? || parent_permission == true
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      "id" => @id,
      "name" => @name,
      "age" => @age,
      "permission" => @parent_permission, 
      "specialization" => @specialization, 
      "classroom" => @classroom
  }.to_json
  end

  private :of_age?
end

person = Person.new(28, 'bignameishere')
puts(person.age)
# puts(person.validate_name())

# parent_permission = { parent_permission: true }
