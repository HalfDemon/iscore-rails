require 'spec_helper'

describe "intrusion_reports/show" do
  before(:each) do
    @intrusion_report = assign(:intrusion_report, stub_model(IntrusionReport,
      :subject => "Subject",
      :team_id => 1,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    rendered.should match(/1/)
    rendered.should match(/Content/)
  end
end
