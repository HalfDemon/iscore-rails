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
# == Purpose
# Tells the type of service
# This model helps with stats
# == Usage
# This model needs to be created before the Service data is entered.

class ServiceType < ActiveRecord::Base
  attr_accessible :description, :name, :port
end
