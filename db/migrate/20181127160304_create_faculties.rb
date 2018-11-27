class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :school
      t.integer :phonenumber
      t.string :email
      t.references :room, foreign_key: true
      t.integer :type

      t.timestamps
    end
  end
end
