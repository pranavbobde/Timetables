class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :subject
  enum status: [ :pending, :approved, :rejected]
  enum starttime: [ :"8am", :"8:30am", :"9am", :"9:30am", :"10am", :"10:30am",:"11am", :"11:30am", :"12pm", :"12:30pm", :"1pm", :"1:30pm",  :"2pm", :"2:30pm", :"3pm", :"3:30pm", :"4pm", :"4:30pm", :"5pm", :"5:30pm", :"6pm", :"6:30pm", :"7pm", :"7:30pm", :"8pm", :"8:30pm", :"9pm", :"9:30pm"]
  enum duration: [ :"30 Minutes", :"1 Hour", :"1.5 Hours"]
  
  # def start_time
  #   self.date
  # end
  
end


