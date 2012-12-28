require 'spec_helper'

describe "service_types/show" do
  before(:each) do
    @service_type = assign(:service_type, stub_model(ServiceType,
      :name => "Name",
      :port => 1,
      :description => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
