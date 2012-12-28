require 'spec_helper'

describe "availability_service_checks/index" do
  before(:each) do
    assign(:availability_service_checks, [
      stub_model(AvailabilityServiceCheck,
        :service => nil,
        :availability_check => nil,
        :site => nil,
        :available => false
      ),
      stub_model(AvailabilityServiceCheck,
        :service => nil,
        :availability_check => nil,
        :site => nil,
        :available => false
      )
    ])
  end

  it "renders a list of availability_service_checks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
