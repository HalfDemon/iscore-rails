require 'spec_helper'

describe "flags/edit" do
  before(:each) do
    @flag = assign(:flag, stub_model(Flag,
      :service => "MyString",
      :site_id => 1,
      :status => "MyString"
    ))
  end

  it "renders the edit flag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flags_path(@flag), :method => "post" do
      assert_select "input#flag_service", :name => "flag[service]"
      assert_select "input#flag_site_id", :name => "flag[site_id]"
      assert_select "input#flag_status", :name => "flag[status]"
    end
  end
end
