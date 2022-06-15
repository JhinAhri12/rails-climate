class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :phone, :string
    add_column :users, :role, :string
  end
end
