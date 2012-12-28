class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.string :name
      t.integer :port
      t.integer :description

      t.timestamps
    end
  end
end
