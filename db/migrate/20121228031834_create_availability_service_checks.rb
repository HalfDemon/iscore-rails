class CreateAvailabilityServiceChecks < ActiveRecord::Migration
  def change
    create_table :availability_service_checks do |t|
      t.belongs_to :service
      t.belongs_to :availability_check
      t.belongs_to :site
      t.boolean :available

      t.timestamps
    end
    add_index :availability_service_checks, :service_id
    add_index :availability_service_checks, :availability_check_id
    add_index :availability_service_checks, :site_id
  end
end
