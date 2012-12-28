require 'spec_helper'

describe "availability_service_checks/show" do
  before(:each) do
    @availability_service_check = assign(:availability_service_check, stub_model(AvailabilityServiceCheck,
      :service => nil,
      :availability_check => nil,
      :site => nil,
      :available => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/false/)
  end
end
