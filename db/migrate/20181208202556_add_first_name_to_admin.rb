class AddFirstNameToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :firstname, :string
  end
end
