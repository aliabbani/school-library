class Teacher < Person
    def initialize(specialization, name = "unknown", parent_permission: true)
        super()
        @specialization = specialization
    end

    def can_use_services?
        return true
    end
end