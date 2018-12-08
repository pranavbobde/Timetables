class BookingAdapter
 
   
   def initialize(x)
      @adaptee = x 
   end
   
   def adapter
      return @adaptee.printdetails if @adaptee.class.name == "Booking"
      return @adaptee.printroom if @adaptee.class.name == "Room"
   end
   
   def printer
      details = self.adapter
      return details
   end
end