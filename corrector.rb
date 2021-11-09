class Corrector
    def correct_name(name)
        name = name.capitalize
        if name.length > 10
            return name[0,10]
        end
    end
end