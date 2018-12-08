class Subscriptions < ApplicationRecord
    has_many :bookings
    has_many :subject
    
   # @userbookings = Bookings.find_by( email: current_user.email)
end