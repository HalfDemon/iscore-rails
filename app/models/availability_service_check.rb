class AvailabilityServiceCheck < ActiveRecord::Base
  belongs_to :service
  belongs_to :availability_check
  belongs_to :site
  attr_accessible :available
end
