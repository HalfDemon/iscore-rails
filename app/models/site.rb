# == Schema Information
#
# Table name: sites
#
#  id               :integer          not null, primary key
#  name             :string(255)      not null
#  organization     :string(255)      not null
#  points           :integer          default(0)
#  number           :string(255)      not null
#  last_sign_in     :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  captured_flags   :integer
#  uncaptured_flags :integer
#

## 
# == Blue Teams
# Sites or Blue Teams are the groups of people in the CDCs
# a user belongs to a site.
# a site owns all of the objects
#

class Site < ActiveRecord::Base
  attr_accessible :name, :number, :organization, :points

  validates_presence_of :name, :number, :organization


  validates_uniqueness_of :number
  
  validates_numericality_of :number

  before_create :set_default_values

  has_many :flags

  def set_default_values
    self.points = 0
  end
end
