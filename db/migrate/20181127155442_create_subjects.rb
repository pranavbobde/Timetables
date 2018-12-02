class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :classname
      ##t.references :course, foreign_key: true
      ##t.references :faculty, foreign_key: true
      ## These references are removed because they will be added in their own migration. mysql does not complain about this by pg does.
      #PG does not allow a foreign key to be specified in a table that does not exist "Yet"
      #This causes the migration on production to fail. Solution: make a new migration just for these references so that production can rebuild the DB.
      t.timestamps
    end
  end
end
