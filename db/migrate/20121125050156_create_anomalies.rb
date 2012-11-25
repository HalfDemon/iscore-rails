class CreateAnomalies < ActiveRecord::Migration
  def change
    create_table :anomalies do |t|
      t.string :name
      t.text :description
      t.datetime :due_time

      t.timestamps
    end
  end
end
