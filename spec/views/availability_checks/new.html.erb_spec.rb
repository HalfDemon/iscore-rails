require 'spec_helper'

describe "availability_checks/new" do
  before(:each) do
    assign(:availability_check, stub_model(AvailabilityCheck,
      :number_of_services_up => 1,
      :number_of_services_down => 1
    ).as_new_record)
  end

  it "renders new availability_check form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => availability_checks_path, :method => "post" do
      assert_select "input#availability_check_number_of_services_up", :name => "availability_check[number_of_services_up]"
      assert_select "input#availability_check_number_of_services_down", :name => "availability_check[number_of_services_down]"
    end
  end
end
