class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name, null: false
      t.string :organization, null: false
      t.interger :points, default: 0
      t.string :number, null: false
      t.timestamps
    end
  end
end
