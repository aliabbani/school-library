class Person
    def initialize(name = "unknown", age, parent_permission: true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def id
        @id
    end

    attr_accessor :name
    attr_accessor :age
    
    def is_of_age?
        if age >=  18
            return true
        else
            return false
        end
    end

    def can_use_services?
        if is_of_age? || parent_permission == true
            return true
        else
            return false
        end
    end

    private :is_of_age?
end