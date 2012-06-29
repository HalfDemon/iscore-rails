class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :organization
      t.integer :points
      t.string :number

      t.timestamps
    end
  end
end
