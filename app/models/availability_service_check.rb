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
# == Purpose
# The purpose of the Availability Service Check is to
# document the state of a service at a given time
# == Usage
# An internal tracking model.
#  Do not create any  Availability Service Checks
# unless you really, really know what your doing
# This will effect scores

class AvailabilityServiceCheck < ActiveRecord::Base
  belongs_to :service

  belongs_to :availability_check

  belongs_to :site

  attr_accessible :available

  validates_presence_of :service_id, :site_id, :availability_check_id, :available

  validates_numericality_of  :service_id, :site_id, :availability_check_id
end
