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

require 'spec_helper'

describe AvailabilityCheck do
  pending "add some examples to (or delete) #{__FILE__}"
end
