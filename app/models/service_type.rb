# == Schema Information
#
# Table name: service_types
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  port        :integer
#  description :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ServiceType < ActiveRecord::Base
  attr_accessible :description, :name, :port
end
