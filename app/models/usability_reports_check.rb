class UsabilityReportsCheck < ActiveRecord::Base
  belongs_to :site
  belongs_to :service
  has_many :usability_reports_submission
  attr_accessible :use, :work
end
