class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :timeslot
  enum status: [ :pending, :approved, :rejected]

end
