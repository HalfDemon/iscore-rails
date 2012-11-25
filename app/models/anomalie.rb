class Anomalie < ActiveRecord::Base
  attr_accessible :name, :description, :due_time
  
  validates_presence_of :name, :description, :due_time
end
