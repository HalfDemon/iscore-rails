# == Schema Information
#
# Table name: usability_reports_checks
#
#  id                              :integer          not null, primary key
#  work                            :boolean
#  site_id                         :integer
#  service_id                      :integer
#  use                             :string(255)
#  usability_reports_submission_id :integer
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

class UsabilityReportsCheck < ActiveRecord::Base
  belongs_to :site
  belongs_to :service
  belongs_to :usability_reports_submission
  attr_accessible :use, :work
end
