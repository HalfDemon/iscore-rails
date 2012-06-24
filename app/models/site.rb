class Site < ActiveRecord::Base
  attr_accessible :name, :number, :organization, :points

  has_many :documents

  has_many :users
end
