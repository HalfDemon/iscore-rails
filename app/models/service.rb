class Service < ActiveRecord::Base
  attr_accessible :name, :port, :site_id, :subdomain

  validates_presence_of :name, :port, :site_id, :subdomain

  validates_numericality_of :port, :site_id
end
