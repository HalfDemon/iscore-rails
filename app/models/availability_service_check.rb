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

class AvailabilityServiceCheck < ActiveRecord::Base
  belongs_to :service
  belongs_to :availability_check
  belongs_to :site
  attr_accessible :available
end
