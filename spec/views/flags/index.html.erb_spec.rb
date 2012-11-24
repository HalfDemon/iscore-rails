require 'spec_helper'

describe "flags/index" do
  before(:each) do
    assign(:flags, [
      stub_model(Flag,
        :content => "MyText",
        :site => nil,
        :captured => false,
        :captured_flag => "MyText",
        :earned_back_points => "",
        :earned_back => false
      ),
      stub_model(Flag,
        :content => "MyText",
        :site => nil,
        :captured => false,
        :captured_flag => "MyText",
        :earned_back_points => "",
        :earned_back => false
      )
    ])
  end

  it "renders a list of flags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
