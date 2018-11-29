class Booking < ApplicationRecord
  has_one :room
  has_one :timeslot
  has_one :subject
  enum status: [ :pending, :approved, :rejected]

end
