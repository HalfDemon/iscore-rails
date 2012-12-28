# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  port       :integer
#  subdomain  :string(255)
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Service do
  pending "add some examples to (or delete) #{__FILE__}"
end
