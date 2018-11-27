class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :email
      t.references :room, foreign_key: true
      t.references :timeslot, foreign_key: true
      t.integer :status
      t.boolean :supervision

      t.timestamps
    end
  end
end
