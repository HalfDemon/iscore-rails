class CreateUsabilityReportsSubmissions < ActiveRecord::Migration
  def change
    create_table :usability_reports_submissions do |t|
      t.integer :site_id
      t.string :comments
      t.integer :done_by

      t.timestamps
    end
  end
end
