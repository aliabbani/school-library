class Student < Person
    def initialize(classroom, name = "unknown", parent_permission: true)
        super()
        @classroom = classroom
    end

    def play_hooky
        return "¯\(ツ)/¯"
    end
end