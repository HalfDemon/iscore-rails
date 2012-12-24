require 'spec_helper'

describe "usability_reports/show" do
  before(:each) do
    @usability_report = assign(:usability_report, stub_model(UsabilityReport,
      :name => "Name",
      :speical_instructions => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
