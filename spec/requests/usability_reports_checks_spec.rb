require 'spec_helper'

describe "UsabilityReportsChecks" do
  describe "GET /usability_reports_checks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get usability_reports_checks_path
      response.status.should be(200)
    end
  end
end
