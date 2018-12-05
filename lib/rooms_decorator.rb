class BasicRoom
    def initialize(name, floor, seating, room)
        @name = room.name
        @floor = room.floor
        @seating = room.seating
        @description = "basic room"
    end
    
    def details
        return @description + @name + "on" + @floor + "with a seating capacity of" + @seating
    end

end

class RoomDecorator
    def initialize(basicroom)
        @basicroom = basicroom
        @features = "no extra features"
    end
    
    def details
        return @basicroom + "with" + @features
    end
end
class RoomWithProjector<RoomDecorator
    def initialize(basicroom)
        super(basicroom)
        @features = "Projector"
    end
    def details
        return @basicroom + "with" + @features
    end
end

class RoomWithComputer<RoomDecorator
    def initialize(basicroom)
        super(basicroom)
        @features = "Computers"
    end
    def details
        return @basicroom + "with" + @features
    end
end

class RoomWithAudioEnhancements<RoomDecorator
    def initialize(basicroom)
        super(basicroom)
        @features = "Mike and Speakers"
    end
    def details
        return @basicroom + "with" + @features
    end
end

