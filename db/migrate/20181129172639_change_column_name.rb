class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :faculties, :type, :stafftype
  end
end
