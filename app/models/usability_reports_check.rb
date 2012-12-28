class UsabilityReportsCheck < ActiveRecord::Base
  belongs_to :site
  belongs_to :service
  belongs_to :usability_reports_submission
  attr_accessible :use, :work
end
