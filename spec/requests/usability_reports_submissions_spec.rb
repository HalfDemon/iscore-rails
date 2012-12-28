require 'spec_helper'

describe "UsabilityReportsSubmissions" do
  describe "GET /usability_reports_submissions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get usability_reports_submissions_path
      response.status.should be(200)
    end
  end
end
