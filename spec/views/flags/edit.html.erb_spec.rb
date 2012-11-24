require 'spec_helper'

describe "flags/edit" do
  before(:each) do
    @flag = assign(:flag, stub_model(Flag,
      :content => "MyText",
      :site => nil,
      :captured => false,
      :captured_flag => "MyText",
      :earned_back_points => "",
      :earned_back => false
    ))
  end

  it "renders the edit flag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flags_path(@flag), :method => "post" do
      assert_select "textarea#flag_content", :name => "flag[content]"
      assert_select "input#flag_site", :name => "flag[site]"
      assert_select "input#flag_captured", :name => "flag[captured]"
      assert_select "textarea#flag_captured_flag", :name => "flag[captured_flag]"
      assert_select "input#flag_earned_back_points", :name => "flag[earned_back_points]"
      assert_select "input#flag_earned_back", :name => "flag[earned_back]"
    end
  end
end
