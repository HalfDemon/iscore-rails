# == Blue Teams
# Sites or Blue Teams are the groups of people in the CDC
# a user belongs to a site

class Site < ActiveRecord::Base
  attr_accessible :name, :number, :organization, :points

  validates_presence_of :name, :number, :organization


  validates_uniqueness_of :number

  
  before_save :set_default_values

  def set_default_values
    self.points = 0
  end
end
