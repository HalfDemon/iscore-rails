##
# == User 
# A user is a any user usign the system.
# This meam any member of:
# * Blue Team (or a blue team member)
# * Red Team
# * White Team
# * Green Team
#
# === Blue Team accounts
# There are a few ways to do blue team accounts. One way 
# is to this is that each team has one account. This 
# will be shared accout for all Team members. The best 
# way to do this would be to set the username to 
# something like siteN. Where N is the site number.
# 
# The other method of doing Blue Team account is to have 
# an account for each Team member. This approch allows
# for better accountabily on the teams side to see
# who did what.
#
# 
class User < ActiveRecord::Base
  belongs_to :site
  attr_accessible :name, :username, :password, :email, :team, :password_digest, :site_id

  validates_presence_of :username, :password, :team, :site

  TEAMS = ["Red", "White", "Green", "Blue", "Admin"]
 
  has_secure_password

  class << self
  	def admin?
  		self.admin == true
  	end

    def red?
      self.team == "Red"
    end

    def white?
      self.team == "White"
    end

    def green?
      self.team == "Green"
    end
  end
end
