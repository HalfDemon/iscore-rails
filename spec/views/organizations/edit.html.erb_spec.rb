require 'spec_helper'

describe "organizations/edit" do
  before(:each) do
    @organization = assign(:organization, stub_model(Organization,
      :name => "MyString",
      :site_count => 1,
      :city => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organizations_path(@organization), :method => "post" do
      assert_select "input#organization_name", :name => "organization[name]"
      assert_select "input#organization_site_count", :name => "organization[site_count]"
      assert_select "input#organization_city", :name => "organization[city]"
      assert_select "input#organization_state", :name => "organization[state]"
    end
  end
end
