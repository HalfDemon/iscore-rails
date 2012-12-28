require 'spec_helper'

describe "availability_checks/edit" do
  before(:each) do
    @availability_check = assign(:availability_check, stub_model(AvailabilityCheck,
      :number_of_services_up => 1,
      :number_of_services_down => 1
    ))
  end

  it "renders the edit availability_check form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => availability_checks_path(@availability_check), :method => "post" do
      assert_select "input#availability_check_number_of_services_up", :name => "availability_check[number_of_services_up]"
      assert_select "input#availability_check_number_of_services_down", :name => "availability_check[number_of_services_down]"
    end
  end
end
