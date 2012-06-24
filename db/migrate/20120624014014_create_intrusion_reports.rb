class CreateIntrusionReports < ActiveRecord::Migration
  def change
    create_table :intrusion_reports do |t|
      t.string :subject
      t.integer :team_id
      t.string :content

      t.timestamps
    end
  end
end
