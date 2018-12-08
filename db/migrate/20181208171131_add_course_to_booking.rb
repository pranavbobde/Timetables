class AddCourseToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :course, foreign_key: true
  end
end
