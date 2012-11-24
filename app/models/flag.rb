class Flag < ActiveRecord::Base
  belongs_to :site
  attr_accessible :captured, :captured_flag, :content, :earned_back, :earned_back_points
end
