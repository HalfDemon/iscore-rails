class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :port
      t.string :subdomain
      t.integer :site_id

      t.timestamps
    end
  end
end
