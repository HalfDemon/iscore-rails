class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :site_count
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
