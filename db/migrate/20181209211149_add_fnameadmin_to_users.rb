class AddFnameadminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :adminify, :boolean
  end
end
