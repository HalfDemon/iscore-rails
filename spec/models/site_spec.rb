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

require 'spec_helper'

describe Site do
  pending "add some examples to (or delete) #{__FILE__}"
end
