require 'RoomsController'
Class BasicRoom<RoomsController
    def initialize (name, floor, seating)
        @name = @room.name
        @floor = @room.floor
        @seating = @room.seating
        @description = "basic room"
    end
    
    def details
        return @description + @name + "on" + @floor + "with a seating capacity of" + @seating
    end
end

