require 'spec_helper'

describe "usability_reports/new" do
  before(:each) do
    assign(:usability_report, stub_model(UsabilityReport,
      :name => "MyString",
      :speical_instructions => "MyText"
    ).as_new_record)
  end

  it "renders new usability_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usability_reports_path, :method => "post" do
      assert_select "input#usability_report_name", :name => "usability_report[name]"
      assert_select "textarea#usability_report_speical_instructions", :name => "usability_report[speical_instructions]"
    end
  end
end
