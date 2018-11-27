class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :coursename
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
