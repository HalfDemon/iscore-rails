require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :name => "MyString",
      :port => 1,
      :subdomain => "MyString",
      :site_id => 1
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path(@service), :method => "post" do
      assert_select "input#service_name", :name => "service[name]"
      assert_select "input#service_port", :name => "service[port]"
      assert_select "input#service_subdomain", :name => "service[subdomain]"
      assert_select "input#service_site_id", :name => "service[site_id]"
    end
  end
end
