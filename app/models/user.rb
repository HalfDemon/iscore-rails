class User < ActiveRecord::Base
  belongs_to :site
  attr_accessible :name, :username, :password, :email, :team, :password_digest, :site_id

  validates_presence_of :username, :password, :team, :site

  TEAMS = ["Red Team", "White Team", "Green Team", "Blue Team"]
 
  has_secure_password

  class << self
  	def admin?
  		self.admin == true
  	end
  end
end
