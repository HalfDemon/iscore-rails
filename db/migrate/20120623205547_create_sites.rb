class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name, null: false
      t.string :organization, null: false
      t.integer :points, default: 0
      t.string :number, null: false
      t.datetime :last_sign_in
      t.timestamps
    end
    add_index :sites, :name
    add_index :sites, :number
    add_index :sites, :organization
  end
end
