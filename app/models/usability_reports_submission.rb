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

class UsabilityReportsSubmission < ActiveRecord::Base
  attr_accessible :comments, :done_by, :site_id

  validates_presence_of :site_id
end
