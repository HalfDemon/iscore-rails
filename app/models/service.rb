# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  port       :integer
#  subdomain  :string(255)
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Service < ActiveRecord::Base
  attr_accessible :name, :port, :site_id, :subdomain

  validates_presence_of :name, :port, :site_id, :subdomain

  validates_numericality_of :port, :site_id
end
