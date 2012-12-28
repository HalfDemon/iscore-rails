class CreateUsabilityReportsChecks < ActiveRecord::Migration
  def change
    create_table :usability_reports_checks do |t|
      t.boolean :work
      t.belongs_to :site
      t.belongs_to :service
      t.string :use
      t.belongs_to :usability_reports_submission

      t.timestamps
    end
    add_index :usability_reports_checks, :site_id
    add_index :usability_reports_checks, :service_id
    add_index :usability_reports_checks, :usability_reports_submission_id
  end
end
