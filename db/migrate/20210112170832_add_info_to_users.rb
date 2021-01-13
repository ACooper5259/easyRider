class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :hcbc, :string
    add_column :users, :hcbc_active, :boolean, default: true
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :is_active, :boolean, default: true
  end
end
