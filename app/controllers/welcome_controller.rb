class WelcomeController < ApplicationController
    def index
        @hello = "This is a message"
        @bookings = Booking.all
    end
    
    # def Admin_login
    #     if session_path_admin_login == true && session_path_password == '1234556'
    #         @au=User.current_user.update_attribute :admin, true
             
    #     end
    # end
    
    
end
