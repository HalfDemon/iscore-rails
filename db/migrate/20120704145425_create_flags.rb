class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.integer :service_id, null: false
      t.integer :site_id, null: false
      t.string :status, default: "Not Captured"
      t.text :flag, null: false
      t.text :captured_flag
      t.timestamps
    end
  end
end
