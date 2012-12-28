# == Schema Information
#
# Table name: anomalies
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  due_time    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Anomaly < ActiveRecord::Base
  attr_accessible :description, :due_time, :name
end
