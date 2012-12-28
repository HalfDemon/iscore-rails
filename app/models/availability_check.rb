# == Schema Information
#
# Table name: availability_checks
#
#  id                      :integer          not null, primary key
#  pubic_run_time          :datetime
#  actual_start_time       :datetime
#  actual_end_time         :datetime
#  number_of_services_up   :integer
#  number_of_services_down :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class AvailabilityCheck < ActiveRecord::Base
  attr_accessible :actual_end_time, :actual_start_time, :number_of_services_down, :number_of_services_up, :pubic_run_time
end
