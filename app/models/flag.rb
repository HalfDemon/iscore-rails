# == Schema Information
#
# Table name: flags
#
#  id                 :integer          not null, primary key
#  content            :text
#  site_id            :integer
#  captured           :boolean
#  captured_flag      :text
#  earned_back_points :integer
#  earned_back        :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Captured: Has the Red Team owned it : boolean : default: false
# Captured Flag: What the red team own : text
# Content: What the flag is : text
# Earned Back: Has flag earned points : boolean : default: false 
# Earned Back Points: How Many points were gained back : default: 0
#
class Flag < ActiveRecord::Base
  belongs_to :site

  attr_accessible :captured, :captured_flag, :content, :earned_back, :earned_back_points

  before_create :default_value

  def default_value
  	self.earned_back = false
  	self.earned_back_points = 0
  	self.captured = false
  end

  def capture!
  	self.captured = true
  	site = Site.find(self.site_id)
  	site.captured_flags =+ 1
  end
end
