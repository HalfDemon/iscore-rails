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
  attr_accessible :name, :username, :password, :email, :team, :site_id, :admin

  validates_presence_of :username, :password, :team

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, format: { with: VALID_EMAIL_REGEX }, allow_blank: true, uniqueness: { case_sensitive: false }

  TEAMS = ["Red", "White", "Green", "Blue", "Admin"]


  before_save :create_remember_token, :downcase_username, :downcase_email

 
  has_secure_password

  belongs_to :site

  class << self
  	def admin?
  		self.admin == true
  	end

    def red?
      if self.team == "Red"
        true
      else
        false
      end     
    end

    def white?
      if self.team == "White"
        true
      else
        false
      end     
    end

    def green?
      if self.team == "Green"
        true
      else
        false
      end     
    end

    def blue?
     if self.team == "Blue"
        true
      else
        false
      end     
    end
  end

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

    def downcase_username
      self.username = self.username.downcase
    end

    def downcase_email
      if self.email
        self.email = self.email.downcase
      end
    end
end
