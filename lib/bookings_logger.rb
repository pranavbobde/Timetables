require 'singleton'

class BookingsLogger
    include Singleton
    
    def initialize 
        @log = File.open("Bookings_Logger.txt", "a")
    end
    
    def logBookings(information)
        @log.puts(information)
        @log.flush
    end
end