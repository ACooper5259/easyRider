class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :hcbc
      t.boolean :hcbc_current, default: true
      t.boolean :is_admin, default: false
      t.boolean :is_current, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
