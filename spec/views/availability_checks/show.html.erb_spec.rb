require 'spec_helper'

describe "availability_checks/show" do
  before(:each) do
    @availability_check = assign(:availability_check, stub_model(AvailabilityCheck,
      :number_of_services_up => 1,
      :number_of_services_down => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
