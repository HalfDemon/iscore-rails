# == Schema Information
#
# Table name: usability_reports_submissions
#
#  id         :integer          not null, primary key
#  site_id    :integer
#  comments   :string(255)
#  done_by    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe UsabilityReportsSubmission do
  pending "add some examples to (or delete) #{__FILE__}"
end
