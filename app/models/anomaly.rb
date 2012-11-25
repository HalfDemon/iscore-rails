class Anomaly < ActiveRecord::Base
  attr_accessible :description, :due_time, :name
end
