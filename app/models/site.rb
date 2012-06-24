# == Blue Teams
# Sites or Blue Teams are the groups of people in the CDC
# a user belongs to a site
class Site < ActiveRecord::Base
  attr_accessible :name, :number, :organization, :points
end
