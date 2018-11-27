class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :CourseName
      t.string :ProgDirector
      t.string :ProgFaculty

      t.timestamps
    end
  end
end
