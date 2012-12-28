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
# == Purpose
# Track every teams service
# == Usage
# These need to be created before the competition starts
# == Examples
# Team 22 Web Server
# * <tt>Name</tt> Team 22 Web Server
# * <tt>Port</tt> 80
# * <tt>site_id</tt> 22
# <tt>subdomain</tt> www
# <tt>service_type_id</tt> 1
#
# Team 22 Remote Desktop Server
# * <tt>Name</tt> Team 22 RDP Server
# * <tt>Port</tt> 3389
# * <tt>site_id</tt> 22
# <tt>subdomain</tt> rdp
# <tt>service_type_id</tt> 4

class Service < ActiveRecord::Base
  attr_accessible :name, :port, :site_id, :subdomain, :service_type_id

  validates_presence_of :name, :port, :site_id, :subdomain, :service_type_id

  validates_numericality_of :port, :site_id

  validates_uniqueness_of :name
end
