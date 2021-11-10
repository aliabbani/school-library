require './corrector.rb'

class Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :id, :corrector

  def initialize(age, name = 'unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
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

  private :of_age?
end

# person = Person.new(28, "bignameishere")
# puts(person.name)
# puts(person.validate_name())