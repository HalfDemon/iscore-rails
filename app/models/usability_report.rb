class UsabilityReport < ActiveRecord::Base
  attr_accessible :end_time, :name, :start_time

  validates_presence_of :name, :end_time, :start_time
end
