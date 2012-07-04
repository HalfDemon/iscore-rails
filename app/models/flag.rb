class Flag < ActiveRecord::Base
  attr_accessible :service_id, :site_id, :status, :flag, :red_flag

  validates_presence_of :user, :site_id, :status, :flag

  STATUS = ["Not Caputed", "Caputed", "Caputed Responed", "Caputed Respone Graded"]
end
