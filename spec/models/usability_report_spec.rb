# == Schema Information
#
# Table name: usability_reports
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe UsabilityReport do
  pending "add some examples to (or delete) #{__FILE__}"
end
