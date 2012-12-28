class UsabilityReportsSubmission < ActiveRecord::Base
  belongs_to :usability_reports_check

  attr_accessible :comments, :done_by, :site_id

  validates_presence_of :site_id, :done_by, :site_id
end
