class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :subject, :dependent => :destroy
  belongs_to :timeslot, :dependent => :destroy
  enum status: [ :pending, :approved, :rejected]

end
