# == Schema Information
#
# Table name: usability_reports
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UsabilityReport < ActiveRecord::Base
  attr_accessible :end_time, :name, :start_time

  validates_presence_of :name, :end_time, :start_time
end
