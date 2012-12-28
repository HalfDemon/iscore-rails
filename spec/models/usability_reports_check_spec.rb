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

require 'spec_helper'

describe UsabilityReportsCheck do
  pending "add some examples to (or delete) #{__FILE__}"
end
