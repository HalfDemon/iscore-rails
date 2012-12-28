class UsabilityReportsSubmission < ActiveRecord::Base
  attr_accessible :comments, :done_by, :site_id

  validates_presence_of :site_id, :done_by, :site_id
end
