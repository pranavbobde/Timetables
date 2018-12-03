class WelcomeController < ApplicationController
  
    def index
        @hello = "This is a message"
        @today = Booking.where(date: Date.today)
        @allaftertomorrow = Booking.where('DATE(date) > ?', Date.today)
        @room = Booking.where("room_id = 65")
        ##dont forget about named scopes
        @monthyear = Date.today.strftime "%B%Y"
    end
    
    # def Admin_login
    #     if session_path_admin_login == true && session_path_password == '1234556'
    #         @au=User.current_user.update_attribute :admin, true
             
    #     end
    # end
    
    
end
