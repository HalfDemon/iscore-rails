require 'spec_helper'

describe "flags/index" do
  before(:each) do
    assign(:flags, [
      stub_model(Flag,
        :service => "Service",
        :site_id => 1,
        :status => "Status"
      ),
      stub_model(Flag,
        :service => "Service",
        :site_id => 1,
        :status => "Status"
      )
    ])
  end

  it "renders a list of flags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Service".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
