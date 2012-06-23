class User < ActiveRecord::Base
  belongs_to :site
  attr_accessible :name, :username, :password, :email, :team, :password_digest, :site_id

  validates_presence_of :username, :password, :team, :site

  has_secure_password
end
