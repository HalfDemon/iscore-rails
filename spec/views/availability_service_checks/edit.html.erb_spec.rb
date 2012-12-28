require 'spec_helper'

describe "availability_service_checks/edit" do
  before(:each) do
    @availability_service_check = assign(:availability_service_check, stub_model(AvailabilityServiceCheck,
      :service => nil,
      :availability_check => nil,
      :site => nil,
      :available => false
    ))
  end

  it "renders the edit availability_service_check form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => availability_service_checks_path(@availability_service_check), :method => "post" do
      assert_select "input#availability_service_check_service", :name => "availability_service_check[service]"
      assert_select "input#availability_service_check_availability_check", :name => "availability_service_check[availability_check]"
      assert_select "input#availability_service_check_site", :name => "availability_service_check[site]"
      assert_select "input#availability_service_check_available", :name => "availability_service_check[available]"
    end
  end
end
