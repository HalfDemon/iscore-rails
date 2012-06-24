require 'spec_helper'

describe "intrusion_reports/edit" do
  before(:each) do
    @intrusion_report = assign(:intrusion_report, stub_model(IntrusionReport,
      :subject => "MyString",
      :team_id => 1,
      :content => "MyString"
    ))
  end

  it "renders the edit intrusion_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => intrusion_reports_path(@intrusion_report), :method => "post" do
      assert_select "input#intrusion_report_subject", :name => "intrusion_report[subject]"
      assert_select "input#intrusion_report_team_id", :name => "intrusion_report[team_id]"
      assert_select "input#intrusion_report_content", :name => "intrusion_report[content]"
    end
  end
end
