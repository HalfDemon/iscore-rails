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

require 'spec_helper'

describe Flag do
  pending "add some examples to (or delete) #{__FILE__}"
end
