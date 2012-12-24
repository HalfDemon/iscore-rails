class CreateUsabilityReports < ActiveRecord::Migration
  def change
    create_table :usability_reports do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
