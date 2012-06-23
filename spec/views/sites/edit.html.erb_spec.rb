require 'spec_helper'

describe "sites/edit" do
  before(:each) do
    @site = assign(:site, stub_model(Site,
      :name => "MyString",
      :organization => "MyString",
      :points => "",
      :number => "MyString"
    ))
  end

  it "renders the edit site form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sites_path(@site), :method => "post" do
      assert_select "input#site_name", :name => "site[name]"
      assert_select "input#site_organization", :name => "site[organization]"
      assert_select "input#site_points", :name => "site[points]"
      assert_select "input#site_number", :name => "site[number]"
    end
  end
end
