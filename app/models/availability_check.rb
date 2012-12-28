class AvailabilityCheck < ActiveRecord::Base
  attr_accessible :actual_end_time, :actual_start_time, :number_of_services_down, :number_of_services_up, :pubic_run_time
end
