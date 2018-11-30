class ChangeSubjects < ActiveRecord::Migration[5.2]
  def change
    change_table :subjects do |t|
        t.references :course, foreign_key: true
        t.references :faculty, foreign_key: true
    end
  end
end
