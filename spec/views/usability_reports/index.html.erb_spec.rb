require 'spec_helper'

describe "usability_reports/index" do
  before(:each) do
    assign(:usability_reports, [
      stub_model(UsabilityReport,
        :name => "Name",
        :speical_instructions => "MyText"
      ),
      stub_model(UsabilityReport,
        :name => "Name",
        :speical_instructions => "MyText"
      )
    ])
  end

  it "renders a list of usability_reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
