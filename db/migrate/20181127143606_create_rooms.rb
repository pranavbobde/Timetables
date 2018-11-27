class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :floor
      t.integer :seating

      t.timestamps
    end
  end
end
