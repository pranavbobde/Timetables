class CreateTimeSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :time_slots do |t|
      t.date :Date
      t.time :StartTime
      t.time :EndTime

      t.timestamps
    end
  end
end
