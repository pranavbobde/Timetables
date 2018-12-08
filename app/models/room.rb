class Room < ApplicationRecord
    has_many :faculty
    
    def printroom
        return "I am from room"
    end
end
