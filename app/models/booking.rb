class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :subject
  enum status: [ :pending, :approved, :rejected]
  enum starttime: [ :"8am", :"8:30am", :"9am"]
  enum duration: [ :"30 Minutes", :"1 Hour", :"1.5 Hours"]

end
