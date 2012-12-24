require 'spec_helper'

describe "usability_reports/edit" do
  before(:each) do
    @usability_report = assign(:usability_report, stub_model(UsabilityReport,
      :name => "MyString",
      :speical_instructions => "MyText"
    ))
  end

  it "renders the edit usability_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usability_reports_path(@usability_report), :method => "post" do
      assert_select "input#usability_report_name", :name => "usability_report[name]"
      assert_select "textarea#usability_report_speical_instructions", :name => "usability_report[speical_instructions]"
    end
  end
end
