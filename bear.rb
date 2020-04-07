class Bear

    attr_reader :name, :type_of_bear, :bear_stomach

    def initialize(name, type_of_bear)
        @name = name
        @type_of_bear = type_of_bear
        @bear_stomach = []
    end

    def bear_catches_fish(fish)
        @bear_stomach << fish
    end

    
    

    


end