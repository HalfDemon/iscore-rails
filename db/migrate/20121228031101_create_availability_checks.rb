class CreateAvailabilityChecks < ActiveRecord::Migration
  def change
    create_table :availability_checks do |t|
      t.datetime :pubic_run_time
      t.datetime :actual_start_time
      t.datetime :actual_end_time
      t.integer :number_of_services_up
      t.integer :number_of_services_down

      t.timestamps
    end
  end
end
