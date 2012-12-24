class Service < ActiveRecord::Base
  attr_accessible :name, :port, :site_id, :subdomain
end
