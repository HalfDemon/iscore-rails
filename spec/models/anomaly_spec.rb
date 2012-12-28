# == Schema Information
#
# Table name: anomalies
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  due_time    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Anomaly do
  pending "add some examples to (or delete) #{__FILE__}"
end
