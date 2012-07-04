class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :name, null: false
      t.belongs_to :site
      t.string :password_digest, null: false
      t.boolean :admin, default: false
      t.string :team, null: false
      t.string :email, null: false

      t.timestamps
    end
    add_index :users, :site_id
    add_index :users, :id
    add_index :users, :admin
    add_index :users, :email
    add_index :users, :username
  end
end
