class WelcomeController < ApplicationController
    def index
        @hello = "This is a message"
        @rooms = Room.all
    end
end
