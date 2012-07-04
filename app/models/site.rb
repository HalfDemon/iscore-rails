## 
# == Blue Teams
# Sites or Blue Teams are the groups of people in the CDC
<<<<<<< HEAD
# a user belongs to a site

=======
# a user belongs to a site.
# a site owns all of the objects
#
>>>>>>> 7300d230fe382411c47ad8042e5b524ac2d0f3e1
class Site < ActiveRecord::Base
  attr_accessible :name, :number, :organization, :points

  validates_presence_of :name, :number, :organization


  validates_uniqueness_of :number

  
  before_save :set_default_values

  def set_default_values
    self.points = 0
  end
end
