# == Schema Information
#
# Table name: availability_service_checks
#
#  id                    :integer          not null, primary key
#  service_id            :integer
#  availability_check_id :integer
#  site_id               :integer
#  available             :boolean
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'spec_helper'

describe AvailabilityServiceCheck do
  pending "add some examples to (or delete) #{__FILE__}"
end
