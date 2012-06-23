class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.belongs_to :site
      t.string :password_digest
      t.boolean :admin
      t.string :team
      t.string :email

      t.timestamps
    end
    add_index :users, :site_id
  end
end
