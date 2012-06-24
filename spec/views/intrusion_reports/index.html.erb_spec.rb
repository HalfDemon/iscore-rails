require 'spec_helper'

describe "intrusion_reports/index" do
  before(:each) do
    assign(:intrusion_reports, [
      stub_model(IntrusionReport,
        :subject => "Subject",
        :team_id => 1,
        :content => "Content"
      ),
      stub_model(IntrusionReport,
        :subject => "Subject",
        :team_id => 1,
        :content => "Content"
      )
    ])
  end

  it "renders a list of intrusion_reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
